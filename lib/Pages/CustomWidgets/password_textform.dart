import 'package:flutter/material.dart';
class PasswordTextForm extends StatelessWidget {

  final bool obserText;
  final FormFieldValidator<String>? validator;
  final String name;
  final VoidCallback onTap;
  final ValueChanged<String>? onChanged;
  final FormFieldSetter<String>? onSaved;
  const PasswordTextForm({required this.obserText, required this.validator,
    required this.name, required this.onTap, this.onChanged, this.onSaved});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obserText,
      validator: validator,
      onChanged: onChanged,
      onSaved: onSaved,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: name,
        hintStyle: TextStyle(color: Colors.black),
        suffixIcon: GestureDetector(
            onTap: onTap,

            child: Icon(
                obserText == true
                    ? Icons.visibility_off
                    : Icons.visibility,
                color: Colors.black)),
      ),
    );
  }
}
