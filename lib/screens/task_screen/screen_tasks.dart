import 'package:flutter/material.dart';
import 'package:flutter_to_do_app/model/task_model/taskmodel.dart';
import 'package:flutter_to_do_app/model/tasks_model/tasksmodel.dart';
import 'package:flutter_to_do_app/screens/task_screen/widgets/taskinput.dart';
import 'package:flutter_to_do_app/services/apicalls.dart';

enum ActionType { newTask, editTask }

class ScreenTasks extends StatelessWidget {
  //Action type
  ActionType action;

  TasksModel? task;
  ScreenTasks({super.key, required this.action, this.task});

  //Text Editing Controller
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();

  //Form key
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    if (action == ActionType.editTask) {
      titleController.text = task!.title;
      descriptionController.text = task!.description;
    }
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: (action == ActionType.newTask)
            ? const Text('Create Task')
            : const Text('Edit Task'),
        centerTitle: true,
        titleTextStyle: Theme.of(context)
            .textTheme
            .titleLarge!
            .copyWith(fontWeight: FontWeight.bold),
      ),
      body: SafeArea(
          child: TaskInput(
              formKey1: formKey1,
              titleController: titleController,
              formKey2: formKey2,
              descriptionController: descriptionController)),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: submitTask,
        label: const Icon(Icons.add),
      ),
    );
  }

  //Submit Task Function
  void submitTask() async {
    if (formKey1.currentState!.validate() &&
        formKey2.currentState!.validate()) {
      bool result;
      if (action == ActionType.newTask) {
        result = await ToDoListsServer.instance.addTask(
            task: TaskModel(
                title: titleController.text,
                description: descriptionController.text));
      } else {
        result = await ToDoListsServer.instance.updateTask(
            task: TasksModel(
                title: titleController.text,
                description: descriptionController.text,
                id: task!.id));
      }

      if (result) {
        Navigator.of(scaffoldKey.currentContext!).pop();
        ToDoListsServer.instance.fetchTasks();

        if (action == ActionType.newTask) {
          ScaffoldMessenger.of(scaffoldKey.currentContext!)
              .showSnackBar(const SnackBar(
            content: Text('Task Added!'),
            duration: Duration(seconds: 3),
            behavior: SnackBarBehavior.floating,
            backgroundColor: Color.fromARGB(155, 255, 255, 255),
          ));
        }
      }
    }
  }
}
