import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  //const MyTextFormField({Key? key}) : super(key: key);
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onChanged;
  final String name;

  MyTextFormField({ required this.validator,
    required this.name, required this.onChanged});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      onChanged: onChanged,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: name,
        hintStyle: TextStyle(color: Colors.black),
         ),
    );
  }
}
