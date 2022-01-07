import 'package:final_project/Pages/Trip_Ideas/type_of_trip.dart';
import 'package:flutter/material.dart';

class Activity extends StatelessWidget {
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
                      context, MaterialPageRoute(builder: (_) => TripIdeas()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage("https://res.cloudinary.com/"
                              "getawayimagecloud/image/upload/"
                              "v1637330954/getAwayImages/"
                              "images_orpsdr.jpg"),
                          fit: BoxFit.fill),
                    ),
                  ),
                ),
              ),
              Text(
                "Camping &\n  Bonfire",
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
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (_) => TripIdeas()));
                  },
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage("https://res.cloudinary.com/"
                                "getawayimagecloud/image/upload/"
                                "v1637330992/getAwayImages/"
                                "images_xtwvs0.jpg"),
                            fit: BoxFit.fill)),
                  ),
                ),
                Text(
                  "   Water \nActivities",
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
                      context, MaterialPageRoute(builder: (_) => TripIdeas()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage("https://res.cloudinary.com/"
                                "getawayimagecloud/image/upload/"
                                "v1637331027/getAwayImages/"
                                "ananda-yoga-retreat_z5pgia.jpg"),
                            fit: BoxFit.fill)),
                  ),
                ),
              ),
              Text(
                "   Yoga \nCamping",
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
  }
}
