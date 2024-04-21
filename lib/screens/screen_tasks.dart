import 'package:flutter/material.dart';

class ScreenTasks extends StatelessWidget {
  ScreenTasks({super.key});
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Task'),
        centerTitle: true,
      ),
      body: SafeArea(
          child: ListView(
        padding: const EdgeInsets.all(10.0),
        children: [
          //Title-Text-Field
          TextFormField(
            controller: titleController,
            decoration: const InputDecoration(hintText: 'Title'),
          ),
          const SizedBox(
            height: 30.0,
          ),
          //Description-Field
          TextFormField(
            controller: descriptionController,
            keyboardType: TextInputType.multiline,
            minLines: 1,
            maxLines: null,
            decoration: const InputDecoration(hintText: 'Description'),
          )
        ],
      )),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {}, label: const Icon(Icons.add)),
    );
  }
}
