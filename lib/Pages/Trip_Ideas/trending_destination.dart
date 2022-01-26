import 'package:final_project/Pages/HomePage/HomeScreen.dart';
import 'package:final_project/Pages/Trip_Ideas/trip_description.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TrendingDestination extends StatelessWidget {
  final String name;
  final String image;
  TrendingDestination({required this.name, required this.image});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black54,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
            ),
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  size: 30,
                )),
          ],
        ),
        body: GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => Description(
                          imgName: image,
                          caption:
                              'The capital and the largest city of Rajasthan',
                          name: name,
                          description:
                              "The city is surrounded by hills and dotted with "
                              "forts. Houses with pink latticed windows line "
                              "the streets, and look almost magical at sunset.",
                        )));
          },
          child: Container(
            color: Colors.black,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 200,
                    width: size.width,
                    color: Colors.white24,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network(
                              image,
                              // "https://static.toiimg.com/thumb/msid-24476893,"
                              // "width-748,height-499,resizemode=4,imgsize-97993/.jpg",
                              height: 170,
                              fit: BoxFit.fill,
                              width: size.width,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              name,
                              //"Jaipur",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              "The capital and the largest city of Rajasthan",
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 12),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "The city is surrounded by hills and dotted with "
                              "forts. Houses with pink latticed windows line "
                              "the streets, and look almost magical at sunset.",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Text(
                                  "538 Kms . 1h 20m",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.apartment,
                                  color: Colors.white,
                                  size: 15,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.airplane_ticket_sharp,
                                  color: Colors.white,
                                  size: 15,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text("\u{20B9}${14622}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 14)),
                              ],
                            ),
                            Row(
                              children: [
                                Spacer(),
                                Text(
                                  "Approx for 5 nights trip",
                                  style: TextStyle(
                                      color: Colors.white70, fontSize: 12),
                                ),
                              ],
                            )
                          ]),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
