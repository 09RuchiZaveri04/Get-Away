import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  //const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: new BottomNavigationBar(
        items: [
          new BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.wallet_travel),
            label: "Trip Money",
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.flight),
            label: "My Trip",
          )
        ],
      ),
    );
  }
}
