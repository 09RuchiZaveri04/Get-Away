import 'package:final_project/Pages/HomePage/HomeScreen.dart';
import 'package:flutter/material.dart';

class  TripIdeas extends StatefulWidget {
  //const ({Key? key}) : super(key: key);

  @override
  State<TripIdeas> createState() => _TripIdeasState();
}

class _TripIdeasState extends State<TripIdeas> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //color: Colors.greenAccent,
       //alignment: Alignment.topLeft,
        body: IconButton( icon: new Icon(Icons.arrow_back,size: 32,),
          onPressed: () { Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (_) => HomeScreen())); },),

      ),
    );
  }
}
