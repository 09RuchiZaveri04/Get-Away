import 'package:final_project/Pages/Trip_Ideas/type_of_trip.dart';
import 'package:flutter/material.dart';

class NextEscape extends StatelessWidget {
  const NextEscape({Key? key}) : super(key: key);

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
                        onTap: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (_) => TripIdeas()));
                        },
                        child: Image.network(
                          "https://res.cloudinary.com/getawayimagecloud/"
                          "image/upload/v1637330633/getAwayImages/"
                          "long-drive-mobile-414x233_nrjw9b.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 5,
                      child: Text(
                        "Gateway for the \nWeekend",
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
                        onTap: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (_) => TripIdeas()));
                        },
                        child: Image.network(
                          "https://img2.10bestmedia.com/Images/Photos/"
                          "351377/GettyImages-607468652_54_990x660.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                        bottom: 10,
                        left: 5,
                        child: Text(
                          "Gateway to the\n Mountains",
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
            height: 10,
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
                        onTap: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (_) => TripIdeas()));
                        },
                        child: Image.network(
                          "https://res.cloudinary.com/getawayimagecloud/"
                          "image/upload/v1637330906/getAwayImages/"
                          "tropical-beach-wallpaper-beach-backgrounds-"
                          "587fbb765f9b584db3241860_l5vaas.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 5,
                      child: Text("Relax on the beach",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              backgroundColor: Colors.white)),
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
                        onTap: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (_) => TripIdeas()));
                        },
                        child: Image.network(
                          "https://toib.b-cdn.net/wp-content/uploads/2019/05/lakshadweep.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 5,
                      child: Text("Honeymoon \n Destination",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              backgroundColor: Colors.white)),
                    ),
                  ]),
                ),
              ]),
        ],
      ),
    );
  }
}
