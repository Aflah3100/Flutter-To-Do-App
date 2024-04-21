import 'package:flutter/material.dart';
import 'package:flutter_to_do_app/screens/screen_tasks.dart';
import 'package:flutter_to_do_app/screens/screen_todolists.dart';
import 'package:flutter_to_do_app/utils/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To-Do-App',
      
      theme: const MaterialTheme(TextTheme()).light(),
      darkTheme: const MaterialTheme(TextTheme()).dark(),
      themeMode: ThemeMode.dark,
      home: const ScreenToDoLists(),
      routes: {
        'new-task-screen': (context) => ScreenTasks(action: ActionType.newTask),
      },
    );
  }
}
