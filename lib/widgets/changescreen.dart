import 'package:flutter/material.dart';
class ChangeScreen extends StatelessWidget {
  //const ChangeScreen({Key? key}) : super(key: key);
  final String account;
  final Function onTap;
  final String name;
  ChangeScreen({
    required this.name,required this.onTap,required this.account
});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(account),
      SizedBox(
        width: 5,
      ),
      GestureDetector(
          onTap: () {},
          child: InkWell(
            child: Text(name,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.blueAccent)),
            onTap: onTap(),
          ))
    ]);
  }
}
