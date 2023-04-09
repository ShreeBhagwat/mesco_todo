import 'package:flutter/material.dart';
import 'package:mesco_todo/all_todo_screen.dart';
import 'package:mesco_todo/widgets/custom_button.dart';

import 'widgets/custom_text_form_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 50),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Login Screen',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            CustomTextFormField(
              controller: emailController,
              hintText: 'Email',
              prefixIcon: Icons.email,
            ),
            CustomTextFormField(
              controller: passwordController,
              hintText: 'Password',
              prefixIcon: Icons.lock,
              isPassword: true,
            ),
            CustomButtonWidget(
              onPressed: () => Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => AllTodoScreen()),
                  (route) => false),
              title: 'Login',
            )
          ],
        ),
      ),
    );
  }
}
