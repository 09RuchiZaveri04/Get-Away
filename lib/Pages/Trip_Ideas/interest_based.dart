import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Interest extends StatelessWidget {
  //const Interest({Key? key}) : super(key: key);
  final String name;
  final String image;
  final String name1;
  final String image1;
  final String name2;
  final String image2;
  final String name3;
  final String image3;
  final String name4;
  final String image4;

  Interest(
      {required this.name,
      required this.image,
      required this.name1,
      required this.image1,
      required this.name2,
      required this.image2,
      required this.name3,
      required this.image3,
      required this.name4,
      required this.image4});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(children: [
                Container(
                  color: Colors.red,
                  height: 150,
                  width: 150,
                  child: Image.network(
                    image,
                    fit: BoxFit.fill,
                  ),
                ),
                Text(
                  name,
                  style: TextStyle(
                      color: Colors.cyan,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                )
              ]),
            ),
            SizedBox(
              width: 10,
            ),
            Column(children: [
              Container(
                color: Colors.red,
                height: 150,
                width: 150,
                child: Image.network(
                  image1,
                  fit: BoxFit.fill,
                ),
              ),
              Text(
                name1,
                style: TextStyle(
                    color: Colors.pink,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              )
            ]),
            SizedBox(
              width: 10,
            ),
            Column(children: [
              Container(
                color: Colors.red,
                height: 150,
                width: 150,
                child: Image.network(
                  image2,
                  fit: BoxFit.fill,
                ),
              ),
              Text(
                name2,
                style: TextStyle(
                    color: Colors.cyan,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              )
            ]),
            SizedBox(
              width: 10,
            ),
            Column(children: [
              Container(
                color: Colors.red,
                height: 150,
                width: 150,
                child: Image.network(
                  image3,
                  fit: BoxFit.fill,
                ),
              ),
              Text(
                name3,
                style: TextStyle(
                    color: Colors.pink,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              )
            ]),
            SizedBox(
              width: 10,
            ),
            Column(children: [
              Container(
                color: Colors.red,
                height: 150,
                width: 150,
                child: Image.network(
                  image4,
                  fit: BoxFit.fill,
                ),
              ),
              Text(
                name4,
                style: TextStyle(
                    color: Colors.cyan,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              )
            ]),
          ],
        ),
      ),
    );
  }
}
