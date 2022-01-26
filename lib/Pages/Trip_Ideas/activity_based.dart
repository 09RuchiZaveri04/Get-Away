import 'package:final_project/Pages/Destinations/destination.dart';
import 'package:final_project/Pages/Trip_Ideas/td_constructor.dart';
import 'package:final_project/provider/category_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Activity extends StatefulWidget {
  late final String name;
  final String image;
  final String name1;
  final String image1;
  final String name2;
  final String image2;

  Activity(
      {required this.name,
      required this.image,
      required this.name1,
      required this.image1,
      required this.name2,
      required this.image2});

  @override
  State<Activity> createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  List<Destination> destination = [];
  providerValue() async {
    destination = await Provider.of<CategoryProvider>(context, listen: false)
        .getYogaData();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    providerValue();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: 175,
        color: Colors.white54,
      ),
      Container(
        height: 80,
        color: Colors.cyanAccent,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Column(children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TDconst(
                                dest: destination,
                              )));
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(widget.image), fit: BoxFit.fill),
                    ),
                  ),
                ),
              ),
              Text(
                widget.name,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink),
              )
            ]),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Column(children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TDconst(
                                  dest: destination,
                                )));
                  },
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(widget.image1),
                            fit: BoxFit.fill)),
                  ),
                ),
                Text(
                  widget.name1,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.pink),
                )
              ]),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TDconst(
                                dest: destination,
                              )));
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(widget.image2),
                            fit: BoxFit.fill)),
                  ),
                ),
              ),
              Text(
                widget.name2,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink),
              )
            ]),
          ),
        ],
      ),
    ]);
    // });
  }
}
