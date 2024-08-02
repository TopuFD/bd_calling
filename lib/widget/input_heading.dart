import 'package:flutter/material.dart';

class InputHeading extends StatelessWidget {
  final String title;
  const InputHeading({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(title,style: const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Color(0xFF000000)
    ),);
  }
}
