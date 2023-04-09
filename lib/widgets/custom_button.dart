import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    super.key,
    required this.onPressed,
    required this.title,
  });

  final Function() onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.5,
          height: 50,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(title),
            ),
          ),
        ));
  }
}
