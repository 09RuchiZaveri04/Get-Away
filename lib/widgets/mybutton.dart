import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  // const MyButton({Key? key}) : super(key: key);
  final Function onPressed;
  final String name;

  MyButton({required this.name, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed(),
        child: Text(
          name,
          style: TextStyle(fontSize: 10),
        ),
        style: ElevatedButton.styleFrom(
          primary: Colors.blueGrey,
          padding: const EdgeInsets.all(25),
          //padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10)
        ),
      ),
    );
  }
}
