import 'package:final_project/Pages/HomePage/HomeScreen.dart';
import 'package:flutter/material.dart';

class TrendingDestination extends StatelessWidget {
  const TrendingDestination({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
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
                  Icons.search,
                  size: 30,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.share,
                  size: 30,
                )),
          ],
        ),
      ),
    );
  }
}
