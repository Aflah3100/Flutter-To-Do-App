import 'package:flutter/material.dart';

class ScreenToDoLists extends StatelessWidget {
  const ScreenToDoLists({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To Do App'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton.extended(onPressed: (){
        Navigator.of(context).pushNamed('task-screen');
      }, label: const Text('New Task')),
    );
  }
}
