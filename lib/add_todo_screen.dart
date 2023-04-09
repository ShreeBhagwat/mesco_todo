import 'package:flutter/material.dart';
import 'package:mesco_todo/models/todo_model.dart';
import 'package:mesco_todo/widgets/custom_button.dart';
import 'package:mesco_todo/widgets/custom_text_form_field.dart';

class AddTodoScreen extends StatelessWidget {
  AddTodoScreen({super.key});

  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Todo'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            CustomTextFormField(
                controller: titleController,
                hintText: 'title',
                prefixIcon: Icons.title),
            CustomTextFormField(
                controller: descriptionController,
                hintText: 'Description',
                prefixIcon: Icons.description),
            CustomButtonWidget(
                onPressed: () => addTodo(context), title: 'Add Todo')
          ],
        ),
      ),
    );
  }

  void addTodo(BuildContext context) {
    if (titleController.text.isEmpty || descriptionController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Title and Description are required'),
        ),
      );
      return;
    }
    final todo = Todo(
        title: titleController.text, description: descriptionController.text);
    todosList.add(todo);
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Todo Added Successfully'),
      ),
    );
    titleController.clear();
    descriptionController.clear();

    Navigator.pop(context, 'isAdded');
  }
}
