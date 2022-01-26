import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:final_project/Pages/Drawer/Custom_drawer.dart';
import 'package:final_project/Pages/Drawer/footer.dart';
import 'package:final_project/Pages/Offers/offer.dart';
import 'package:final_project/Pages/Offers/offer_container.dart';
import 'package:final_project/Pages/Trip_Ideas/activity_based.dart';
import 'package:final_project/Pages/Trip_Ideas/interest_based.dart';
import 'package:final_project/Pages/Trip_Ideas/next_escape.dart';
import 'package:final_project/Pages/Trip_Ideas/trending_now.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Destinations/destination.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        key: _key,
        backgroundColor: Colors.black12,
        bottomSheet: Container(height: 54, child: Footer()),
        drawer: Container(child: CustomDrawer()),
        appBar: AppBar(
          //expandedHeight: 45,
          backgroundColor: Colors.black,
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.yellowAccent,
              size: 32,
            ),
            onPressed: () {
              _key.currentState!.openDrawer();
            },
          ),
          title: Text(
            'Discover World With Us!',
            style: TextStyle(
                fontSize: 31,
                fontWeight: FontWeight.normal,
                fontFamily: 'Lobster',
                color: Colors.lightGreenAccent,
                shadows: [
                  Shadow(
                      blurRadius: 5,
                      color: Colors.red,
                      offset: Offset(2.5, 2.5))
                ]),
          ),
          centerTitle: true,
        ),
        body: FutureBuilder(
            future: FirebaseFirestore.instance
                .collection("destination")
                .doc("YQZw6ltOtyrMlWA5COr3")
                .collection("featuredestination")
                .get(),
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }

              Destination mountain = Destination(
                name: snapshot.data?.docs[0]["name"],
                image: snapshot.data?.docs[0]["image"],
              );
              //print(mountain.name);
              Destination beach = Destination(
                name: snapshot.data?.docs[1]["name"],
                image: snapshot.data?.docs[1]["image"],
              );
              //print(beach.name);
              Destination honeymonn = Destination(
                name: snapshot.data?.docs[2]["name"],
                image: snapshot.data?.docs[2]["image"],
              );
              //print(honeymonn.name);
              Destination weekend = Destination(
                name: snapshot.data?.docs[3]["name"],
                image: snapshot.data?.docs[3]["image"],
              );
              //print(weekend.name);

              return FutureBuilder(
                  future: FirebaseFirestore.instance
                      .collection("destination")
                      .doc("YQZw6ltOtyrMlWA5COr3")
                      .collection("activityBased")
                      .get(),
                  builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (snapshot.hasData) {
                      print('has data');
                    }
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    Destination camping = Destination(
                      name: snapshot.data?.docs[0]["name"],
                      image: snapshot.data?.docs[0]["image"],
                    );
                    //    print(camping.name);

                    Destination water = Destination(
                      name: snapshot.data?.docs[1]["name"],
                      image: snapshot.data?.docs[1]["image"],
                    );
                    //  print(camping.name);

                    Destination yoga = Destination(
                      name: snapshot.data?.docs[2]["name"],
                      image: snapshot.data?.docs[2]["image"],
                    );
                    //print(yoga.name);

                    return FutureBuilder(
                        future: FirebaseFirestore.instance
                            .collection("destination")
                            .doc("YQZw6ltOtyrMlWA5COr3")
                            .collection("interest")
                            .get(),
                        builder:
                            (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                          Destination international = Destination(
                            name: snapshot.data?.docs[0]["name"],
                            image: snapshot.data?.docs[0]["image"],
                          );
                          //    print(international.name);

                          Destination weekadv = Destination(
                            name: snapshot.data?.docs[1]["name"],
                            image: snapshot.data?.docs[1]["image"],
                          );
                          //  print(weekadv.name);

                          Destination pilgrimage = Destination(
                            name: snapshot.data?.docs[2]["name"],
                            image: snapshot.data?.docs[2]["image"],
                          );
                          //print(pilgrimage.name);

                          Destination wildlife = Destination(
                            name: snapshot.data?.docs[3]["name"],
                            image: snapshot.data?.docs[3]["image"],
                          );
                          //print(wildlife.name);

                          Destination romantic = Destination(
                            name: snapshot.data?.docs[4]["name"],
                            image: snapshot.data?.docs[4]["image"],
                          );
                          //print(romantic.name);

                          return Stack(children: [
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                      "https://iphoneswallpapers.com/wp-content/uploads/2020/01/Twilight-Lake-iPhone-Wallpaper.jpg",
                                    ),
                                    fit: BoxFit.cover),
                              ),
                              child: ClipRRect(
                                child: BackdropFilter(
                                  filter:
                                      ImageFilter.blur(sigmaX: 1, sigmaY: 1),
                                  child: Container(
                                    alignment: Alignment.center,
                                    color: Colors.grey.withOpacity(0.1),
                                  ),
                                ),
                              ),
                            ),
                            SingleChildScrollView(
                              child: Column(children: [
                                //SizedBox(height: 10),
                                Container(
                                  width: size.width,
                                  height: 45,
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
                                Container(
                                  child: Row(children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.local_offer_outlined,
                                      color: Colors.yellowAccent,
                                      size: 25,
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      "OFFERS",
                                      style: TextStyle(
                                          fontSize: 22,
                                          color: Colors.yellowAccent,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Spacer(),
                                    InkWell(
                                      onTap: () {
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (_) => MulOffer()));
                                      },
                                      child: Text("View All",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.yellowAccent,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (_) => MulOffer()));
                                      },
                                      icon: Icon(
                                        Icons.arrow_forward_ios,
                                        color: Colors.yellowAccent,
                                        size: 15,
                                      ),
                                    ),
                                  ]),
                                ),
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
                                SizedBox(height: 20),
                                Row(children: [
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    "Ideas For Your Next Escape",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        shadows: [
                                          Shadow(
                                              blurRadius: 5,
                                              color: Colors.pink,
                                              offset: Offset(1.5, 1.5))
                                        ]),
                                  ),
                                ]),
                                SizedBox(
                                  height: 100,
                                ),
                                NextEscape(
                                  name: mountain.name,
                                  image1: mountain.image,
                                  name1: beach.name,
                                  image2: beach.image,
                                  name2: honeymonn.name,
                                  image3: honeymonn.image,
                                  name3: weekend.name,
                                  image4: weekend.image,
                                ),

                                SizedBox(
                                  height: 70,
                                ),
                                Row(children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Ideas Based On Activity",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22,
                                        color: Colors.white,
                                        shadows: [
                                          Shadow(
                                              blurRadius: 5,
                                              color: Colors.cyan,
                                              offset: Offset(2.0, 2.0))
                                        ]),
                                  ),
                                  Spacer(),
                                ]),
                                SizedBox(
                                  height: 20,
                                ),
                                Activity(
                                  name: camping.name,
                                  image: camping.image,
                                  name1: water.name,
                                  image1: water.image,
                                  name2: yoga.name,
                                  image2: yoga.image,
                                ),
                                SizedBox(
                                  height: 50,
                                ),

                                Row(children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      'Trending Now',
                                      style: TextStyle(
                                          fontSize: 22,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          shadows: [
                                            Shadow(
                                                blurRadius: 5,
                                                color: Colors.cyan,
                                                offset: Offset(2.0, 2.0))
                                          ]),
                                    ),
                                  ),
                                  Spacer(),
                                  Text("View All",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                  ),
                                ]),
                                SizedBox(
                                  height: 20,
                                ),

                                Stack(children: [
                                  Column(children: [
                                    Trending(),
                                    SizedBox(
                                      height: 50,
                                    ),
                                    Row(children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Text(
                                          'Discover by Interest',
                                          style: TextStyle(
                                              fontSize: 22,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              shadows: [
                                                Shadow(
                                                    blurRadius: 5,
                                                    color: Colors.cyan,
                                                    offset: Offset(2.0, 2.0))
                                              ]),
                                        ),
                                      ),
                                      Spacer(),
                                      Text("View All",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold)),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.arrow_forward_ios,
                                          color: Colors.white,
                                          size: 15,
                                        ),
                                      ),
                                    ]),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Interest(
                                        name: international.name,
                                        image: international.image,
                                        name1: weekadv.name,
                                        image1: weekadv.image,
                                        name2: pilgrimage.name,
                                        image2: pilgrimage.image,
                                        name3: wildlife.name,
                                        image3: wildlife.image,
                                        name4: romantic.name,
                                        image4: romantic.image),
                                    Container(
                                      height: 100,
                                    )
                                  ]),
                                ]),
                              ]),
                            ),
                          ]);
                        });
                  });
            }));
  }
}
