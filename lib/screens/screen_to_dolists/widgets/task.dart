//Task Widget
import 'package:flutter/material.dart';
import 'package:flutter_to_do_app/model/tasks_model/tasksmodel.dart';
import 'package:flutter_to_do_app/screens/task_screen/screen_tasks.dart';
import 'package:flutter_to_do_app/services/apicalls.dart';

class Task extends StatelessWidget {
  const Task({

    super.key,
    required this.theme,
    required this.taskList
  });

  final ThemeData theme;
  final List<TasksModel> taskList;

  @override
  Widget build(BuildContext context) {
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
                    style: const TextStyle(
                        fontWeight: FontWeight.bold),
                  ),
                ),
                title: Center(
                    child: Text(
                  task.title,
                  style: theme.textTheme.titleLarge,
                )),
                subtitle: Center(child: Text(task.description)),
                trailing:
                    PopupMenuButton(onSelected: (value) async {
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
  }
}
