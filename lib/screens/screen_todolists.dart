import 'package:flutter/material.dart';
import 'package:flutter_to_do_app/model/tasks_model/tasksmodel.dart';
import 'package:flutter_to_do_app/screens/screen_tasks.dart';
import 'package:flutter_to_do_app/services/apicalls.dart';

class ScreenToDoLists extends StatelessWidget {
  const ScreenToDoLists({super.key});

  @override
  Widget build(BuildContext context) {
    //Fetch Tasks
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await ToDoListsServer.instance.fetchTasks();
    });
    return Scaffold(
      appBar: AppBar(
        title: const Text('To Do App'),
        centerTitle: true,
      ),
      body: ValueListenableBuilder(
          valueListenable: ToDoListsServer.instance.taskListNotifier,
          builder:
              (BuildContext context, List<TasksModel> taskList, Widget? _) {
            return ListView.separated(
                itemBuilder: (BuildContext ctx, int index) {
                  final task = taskList[index];

                  return GestureDetector(
                    onTap: () => Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return ScreenTasks(
                        action: ActionType.editTask,
                        task: task,
                      );
                    })),
                    //Task Widget
                    child: Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          child: Text(
                            (index + 1).toString(),
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        title: Center(
                            child: Text(
                          task.title,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        )),
                        subtitle: Center(child: Text(task.description)),
                        trailing: PopupMenuButton(onSelected: (value) async {
                          final result = await ToDoListsServer.instance
                              .deleteTask(task.id);

                          if (result) {
                            ToDoListsServer.instance.fetchTasks();
                          }
                        }, itemBuilder: (BuildContext context) {
                          return [
                            const PopupMenuItem(
                                value: 'delete',
                                child: Center(child: Text('Delete')))
                          ];
                        }),
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext ctx, int index) {
                  return const SizedBox(
                    height: 10.0,
                  );
                },
                itemCount: taskList.length);
          }),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.of(context).pushNamed('new-task-screen');
          },
          label: const Text('New Task')),
    );
  }
}
