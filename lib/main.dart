import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mesco_todo/all_todo_screen.dart';
import 'package:mesco_todo/login_screen.dart';

void main() {
  runApp(const MescoTodo());
}

class MescoTodo extends StatelessWidget {
  const MescoTodo({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: LoginScreen(),
    );
  }
}
