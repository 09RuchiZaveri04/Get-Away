import 'package:carousel_slider/carousel_slider.dart';
import 'package:final_project/Pages/CustomWidgets/offer_container.dart';
import 'package:final_project/Pages/Drawer/Custom_drawer.dart';
import 'package:final_project/Pages/Drawer/feedback.dart';
import 'package:final_project/Pages/HomePage/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      //backgroundColor: Colors.black,
      drawer: CustomDrawer(),
      body: CustomScrollView(slivers: [
        SliverAppBar(
          expandedHeight: 50,
          backgroundColor: Colors.black,
          title: Text(
            'Discover World With Us!',
            style: TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.bold,
              fontFamily: 'ArchitectsDaughter',
              color: Colors.pink,
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            Stack(children: [
              Image.network(
                "https://res.cloudinary.com/getawayimagecloud/"
                    "image/upload/v1637331106/getAwayImages/images_u5whgf.jpg",
                fit: BoxFit.cover,
                height: size.longestSide,
              ),
              Column(children: [
                SizedBox(height: 15),
                Container(
                  width: size.width,
                  height: 40,
                  color: Colors.white,
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search for something',
                        prefixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.local_offer_outlined,
                    color: Colors.yellow,
                    size: 25,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "OFFERS",
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.yellow,
                        fontWeight: FontWeight.bold),
                  ),
                ]),
                SizedBox(
                  height: 15,
                ),
                OfferContainer(),
                SizedBox(
                  height: 25,
                  //width: 20,
                ),
                Row(children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "TRIP IDEAS",
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.yellow,
                        fontWeight: FontWeight.bold),
                  ),
                ]),
                SizedBox(height: 15),
                Row(children: [
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Ideas For Your Next Escape",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ]),
                SizedBox(
                  height: 10,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(children: [
                        Container(
                            height: 180.0,
                            width: 180.0,
                            color: Colors.transparent,
                            child: Image.network(
                                "https://res.cloudinary.com/getawayimagecloud/"
                                    "image/upload/v1637330633/getAwayImages/"
                                    "long-drive-mobile-414x233_nrjw9b.jpg",
                                fit: BoxFit.cover)),
                        Positioned(
                          bottom: 10,
                          left: 5,
                          child: Text(
                            "Gateway for the \nWeekend",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ]),
                      SizedBox(
                        width: 10,
                      ),
                      Stack(children: [
                        Container(
                          height: 180.0,
                          width: 180.0,
                          color: Colors.transparent,
                          child: Image.network(
                            "https://res.cloudinary.com/getawayimagecloud/image/upload/v1637330480/getAwayImages/mountain-wallpaper-background-1_kqrlh7.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                            bottom: 10,
                            left: 5,
                            child: Text(
                              "Gateway to the\nMountains",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            )),
                      ]),
                    ]),
                SizedBox(
                  height: 15,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(children: [
                        Container(
                          height: 180.0,
                          width: 180.0,
                          color: Colors.transparent,
                          child: Image.network(
                            "https://res.cloudinary.com/getawayimagecloud/"
                                "image/upload/v1637330428/getAwayImages"
                                "/honeymoon-destination-1_kjmhce.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          left: 5,
                          child: Text(
                            "Honeymoon \nDestination",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ]),
                      SizedBox(
                        width: 10,
                      ),
                      Stack(children: [
                        Container(
                          height: 180.0,
                          width: 180.0,
                          color: Colors.transparent,
                          child: Image.network(
                            "https://res.cloudinary.com/getawayimagecloud/"
                                "image/upload/v1637330906/getAwayImages/"
                                "tropical-beach-wallpaper-beach-backgrounds-"
                                "587fbb765f9b584db3241860_l5vaas.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          left: 5,
                          child: Text("Relax on the beach",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      ]),
                    ]),
                SizedBox(
                  height: 20,
                ),
                Row(children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Ideas Based On Activity",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black),
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
                      child: Column(children: [
                        Container(
                          width: 120,
                          height: 120,
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://res.cloudinary.com/"
                                          "getawayimagecloud/image/upload/"
                                          "v1637330954/getAwayImages/"
                                          "images_orpsdr.jpg"),
                                  fit: BoxFit.fill)),
                        ),
                        Text(
                          "Camping &\n  Bonfire",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        )
                      ]),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(children: [
                        Container(
                          width: 120,
                          height: 120,
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://res.cloudinary.com/"
                                          "getawayimagecloud/image/upload/"
                                          "v1637330992/getAwayImages/"
                                          "images_xtwvs0.jpg"),
                                  fit: BoxFit.fill)),
                        ),
                        Text(
                          "   Water \nActivities",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        )
                      ]),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(children: [
                        Container(
                          width: 120,
                          height: 120,
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://res.cloudinary.com/"
                                          "getawayimagecloud/image/upload/"
                                          "v1637331027/getAwayImages/"
                                          "ananda-yoga-retreat_z5pgia.jpg"),
                                  fit: BoxFit.fill)),
                        ),
                        Text(
                          "   Yoga \nCamping",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        )
                      ]),
                    ),
                  ],
                )
              ]),
            ]),
          ]),
        ),
      ]),
    );
  }
}
