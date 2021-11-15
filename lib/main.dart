import 'dart:async';

import 'package:flutter/material.dart';

import 'HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
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
                "https://c4.wallpaperflare.com/wallpaper/778/928/14/tent-night-"
                "camping-starry-sky-wallpaper-preview.jpg",
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
