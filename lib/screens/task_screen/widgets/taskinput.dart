//Input Task Widget
import 'package:flutter/material.dart';

class TaskInput extends StatelessWidget {
  const TaskInput({
    super.key,
    required this.formKey1,
    required this.titleController,
    required this.formKey2,
    required this.descriptionController,
  });

  final GlobalKey<FormState> formKey1;
  final TextEditingController titleController;
  final GlobalKey<FormState> formKey2;
  final TextEditingController descriptionController;

  @override
  Widget build(BuildContext context) {
    return ListView(
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
    );
  }
}
