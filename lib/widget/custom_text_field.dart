import 'package:flutter/material.dart';
import 'package:mytodo/utils/color.dart';

class CustomTextField extends StatelessWidget {
  final String controller;
  final String hintText;
  final String labelText;
  final TextInputType keyboardType;

  const CustomTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.labelText,
      required this.keyboardType,});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return TextFormField(
      keyboardType: keyboardType,
      decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          labelStyle: TextStyle(fontSize: 12, color: AppCollor.appBarCollor),
          border: OutlineInputBorder()),
    );
  }
}
