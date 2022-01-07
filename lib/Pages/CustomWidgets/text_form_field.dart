import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  // MyTextFormField({Key? key}) : super(key: key);
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onChanged;
  final String name;
  final FormFieldSetter<String>? onSaved;

      const MyTextFormField({ required this.validator,
    required this.name,  this.onChanged,  this.onSaved,});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      onChanged: onChanged,
      onSaved: onSaved,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: name,
        hintStyle: TextStyle(color: Colors.black),
         ),
    );
  }
}
