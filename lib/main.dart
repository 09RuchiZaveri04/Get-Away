import 'dart:async';

import 'package:flutter/material.dart';

import 'Pages/HomePage/HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 2),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomeScreen())));
  }

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.network(
                "https://res.cloudinary.com/getawayimagecloud/"
                    "image/upload/v1637331620/getAwayImages/splash_yw1j4w.jpg",
                width: size.width,
                fit: BoxFit.cover,
                height: size.height),
            Center(
              child: Text(
                "Get-A-Way",
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrangeAccent,
                    fontFamily: 'static',
                    shadows: [
                      Shadow(
                          blurRadius: 5,
                          color: Colors.yellow,
                          offset: Offset(2.0, 2.0))
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
