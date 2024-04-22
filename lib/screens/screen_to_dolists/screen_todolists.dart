import 'package:flutter/material.dart';
import 'package:flutter_to_do_app/model/tasks_model/tasksmodel.dart';
import 'package:flutter_to_do_app/screens/screen_to_dolists/widgets/task.dart';
import 'package:flutter_to_do_app/services/apicalls.dart';

class ScreenToDoLists extends StatelessWidget {
  const ScreenToDoLists({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    //Fetch Tasks Function
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await ToDoListsServer.instance.fetchTasks();
    });

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'To Do App',
          style: theme.textTheme.titleLarge,
        ),
        centerTitle: true,
      ),
      body: ValueListenableBuilder(
          valueListenable: ToDoListsServer.instance.taskListNotifier,
          builder:
              (BuildContext context, List<TasksModel> taskList, Widget? _) {
            return (taskList.isEmpty)
                ? const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          'No Tasks!',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.0),
                        ),
                      )
                    ],
                  )
                : Task(
                    theme: theme,
                    taskList: taskList,
                  );
          }),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.of(context).pushNamed('new-task-screen');
          },
          label: const Text('New Task')),
    );
  }
}
