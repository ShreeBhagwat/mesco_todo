import 'package:flutter/material.dart';
import 'package:mesco_todo/models/todo_model.dart';

import 'add_todo_screen.dart';

class AllTodoScreen extends StatefulWidget {
  const AllTodoScreen({super.key});

  @override
  State<AllTodoScreen> createState() => _AllTodoScreenState();
}

class _AllTodoScreenState extends State<AllTodoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Todo'),
      ),
      body: todosList.isNotEmpty
          ? ListView.builder(
              itemCount: todosList.length,
              itemBuilder: (context, index) {
                final todo = todosList[index];
                return ListTile(
                    title: Text(todo.title),
                    subtitle: Text(todo.description),
                    trailing: IconButton(
                      onPressed: () {
                        todosList.removeAt(index);
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Todo Deleted Successfully'),
                          ),
                        );
                        setState(() {});
                      },
                      icon: const Icon(Icons.delete),
                    ));
              })
          : const Center(
              child: Text('No Todo Added Yet'),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddTodoScreen()),
          ).then((value) {
            if (value == 'isAdded') {
              setState(() {});
            }
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
