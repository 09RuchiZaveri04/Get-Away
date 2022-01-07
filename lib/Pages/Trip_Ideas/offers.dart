import 'package:final_project/Pages/HomePage/HomeScreen.dart';
import 'package:flutter/material.dart';

class Offer extends StatelessWidget {
  const Offer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Offer",
            style: TextStyle(
                color: Colors.yellowAccent,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontSize: 24),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: 30,
              color: Colors.yellowAccent,
            ),
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (_) => HomeScreen()));
            },
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.share,
                  size: 25,
                  color: Colors.yellowAccent,
                ))
          ],
        ),
      ),
    );
  }
}
