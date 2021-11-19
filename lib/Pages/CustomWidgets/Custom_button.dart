import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key,required this.buttonName,required this.onPress}) : super(key: key);
  final String buttonName;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:onPress,
      child: Text(
        buttonName,
        style: TextStyle(fontSize: 25),
      ),
      style: ElevatedButton.styleFrom(
          primary: Colors.blueGrey,
          //padding: const EdgeInsets.all(25),
          padding: const EdgeInsets.symmetric(
              vertical: 20, horizontal: 40)),
    );
  }
}
