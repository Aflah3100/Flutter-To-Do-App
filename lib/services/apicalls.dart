import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_to_do_app/model/task_model/taskmodel.dart';
import 'package:flutter_to_do_app/model/task_response_model/taskresponsemode.dart';
import 'package:flutter_to_do_app/model/tasks_model/tasksmodel.dart';
import 'package:http/http.dart' as http;

abstract class ToDoListApiCalls {
  Future<void> fetchTasks();

  Future<bool> addTask({required TaskModel task});

  Future<bool> updateTask({required TasksModel task});

  Future<bool> deleteTask(String id);
}

class ToDoListsServer implements ToDoListApiCalls {
  //Singleton Class
  ToDoListsServer._internal();

  static ToDoListsServer instance = ToDoListsServer._internal();

  factory ToDoListsServer() => instance;

  //Task Lists Notifier

  ValueNotifier<List<TasksModel>> taskListNotifier = ValueNotifier([]);

  @override
  //Add Task to the Server
  Future<bool> addTask({required TaskModel task}) async {
    final uri = Uri.parse('https://api.nstack.in/v1/todos');

    final body = {
      "title": task.title,
      "description": task.description,
      "is_completed": false
    };

    final response = await http.post(uri,
        body: jsonEncode(body), headers: {'Content-Type': 'application/json'});

    return (response.statusCode == 201) ? true : false;
  }

  @override
  Future<void> fetchTasks() async {
    final uri = Uri.parse('https://api.nstack.in/v1/todos?page=1&limit=20');
    final response = await http.get(uri);

    final responseTask = TaskResponseModel.fromJson(jsonDecode(response.body));
    if (responseTask.code == 200) {
      final taskList = responseTask.items!.map((task) {
        return TasksModel(
            title: task.title!, description: task.description!, id: task.sId!);
      }).toList();

      taskListNotifier.value = taskList;
    }
  }

  @override
  Future<bool> updateTask({required TasksModel task}) async {
    final uri = Uri.parse('https://api.nstack.in/v1/todos/${task.id}');

    final body = {
      "title": task.title,
      "description": task.description,
      "is_completed": false
    };

    final response = await http.put(
      uri,
      body: jsonEncode(body),
      headers: {'Content-Type': 'application/json'},
    );

    return response.statusCode == 200;
  }

  @override
  Future<bool> deleteTask(String id) async{
    final uri=Uri.parse('https://api.nstack.in/v1/todos/$id');
    final response=await http.delete(uri);
    return (response.statusCode==200);
  }
}
