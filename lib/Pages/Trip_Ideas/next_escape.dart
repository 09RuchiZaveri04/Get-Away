//import 'package:final_project/Pages/HomePage/HomeScreenip.dart';
import 'package:flutter/material.dart';

class NextEscape extends StatelessWidget {
  //const NextEscape({Key? key}) : super(key: key);
  final String name;
  final String image1;
  final String name1;
  final String image2;
  final String name2;
  final String image3;
  final String name3;
  final String image4;

  NextEscape({
    required this.name,
    required this.image1,
    required this.name1,
    required this.image2,
    required this.name2,
    required this.image3,
    required this.name3,
    required this.image4,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Stack(children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      height: 180.0,
                      color: Colors.transparent,
                      child: GestureDetector(
                        // onTap: () {
                        //   Navigator.pushReplacement(
                        //       context,
                        //       MaterialPageRoute(
                        //           builder: (context) => TrendingDestination()));
                        // },
                        child: Image.network(
                          image1,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 5,
                      child: Text(
                        name1,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            backgroundColor: Colors.white),
                      ),
                    ),
                  ]),
                ),
                Expanded(
                  flex: 1,
                  child: Stack(children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      height: 180.0,
                      color: Colors.transparent,
                      child: GestureDetector(
                        // onTap: () {
                        //   Navigator.pushReplacement(
                        //       context,
                        //       MaterialPageRoute(
                        //           builder: (_) => TrendingDestination()));
                        // },
                        child: Image.network(
                          image2,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                        bottom: 10,
                        left: 5,
                        child: Text(
                          name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black87,
                              backgroundColor: Colors.white),
                        )),
                  ]),
                ),
              ]),
          SizedBox(
            height: 15,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Stack(children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      height: 180.0,
                      color: Colors.transparent,
                      child: GestureDetector(
                        // onTap: () {
                        //   Navigator.pushReplacement(
                        //       context,
                        //       MaterialPageRoute(
                        //           builder: (_) =>
                        //               TrendingDestination()));
                        // },
                        child: Image.network(
                          image3,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 5,
                      child: Text(
                        name2,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            backgroundColor: Colors.white),
                      ),
                    ),
                  ]),
                ),
                Expanded(
                  flex: 1,
                  child: Stack(children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      height: 180.0,
                      color: Colors.transparent,
                      child: GestureDetector(
                        // onTap: () {
                        //   Navigator.pushReplacement(
                        //       context,
                        //       MaterialPageRoute(
                        //           builder: (_) =>
                        //               TrendingDestination()));
                        // },
                        child: Image.network(
                          image4,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                        bottom: 10,
                        left: 5,
                        child: Text(
                          name3,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black87,
                              backgroundColor: Colors.white),
                        )),
                  ]),
                ),
              ]),
        ],
      ),
    );
  }
}
