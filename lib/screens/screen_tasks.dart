import 'package:flutter/material.dart';
import 'package:flutter_to_do_app/model/task_model/taskmodel.dart';
import 'package:flutter_to_do_app/model/tasks_model/tasksmodel.dart';
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
        titleTextStyle:
            const TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
      ),
      body: SafeArea(
          child: ListView(
        padding: const EdgeInsets.all(10.0),
        children: [
          //Title-Text-Field
          Form(
            key: formKey1,
            child: TextFormField(
              validator: (title) =>
                  (title == null || title.isEmpty) ? 'Title Is Empty' : null,
              controller: titleController,
              decoration: const InputDecoration(hintText: 'Title'),
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          //Description-Field
          Form(
            key: formKey2,
            child: TextFormField(
              validator: (description) =>
                  (description == null || description.isEmpty)
                      ? 'Description Is Empty'
                      : null,
              controller: descriptionController,
              keyboardType: TextInputType.multiline,
              minLines: 1,
              maxLines: null,
              decoration: const InputDecoration(hintText: 'Description'),
            ),
          )
        ],
      )),
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
