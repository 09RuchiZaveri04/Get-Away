import 'dart:ui';

import 'package:final_project/Pages/CustomWidgets/offer_container.dart';
import 'package:final_project/Pages/Drawer/Custom_drawer.dart';
import 'package:final_project/Pages/Drawer/activity_based.dart';
import 'package:final_project/Pages/Drawer/footer.dart';
import 'package:final_project/Pages/Drawer/interest_based.dart';
import 'package:final_project/Pages/Drawer/next_escape.dart';
import 'package:final_project/Pages/Drawer/special_trip.dart';
import 'package:final_project/Pages/Trending_Now/trending_now.dart';
import 'package:final_project/Pages/Trip_Ideas/type_of_trip.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                    blurRadius: 5, color: Colors.red, offset: Offset(2.5, 2.5))
              ]),
        ),
        centerTitle: true,
      ),
      body: Stack(children: [
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
              filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
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
                Text("View All",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.yellowAccent,
                        fontWeight: FontWeight.bold)),
                IconButton(
                  onPressed: () {},
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
            NextEscape(),
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
            Activity(),
            SizedBox(
              height: 50,
            ),
            Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "What's New",
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
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (_) => TripIdeas()));
                },
                child: Text("View All",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 15,
                ),
              ),
            ]),
            SpecialTrip(),
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
              // Container(
              //   height: 500,
              //   width: size.width,
              //   child: Image.network(
              //       "https://toppng.com/uploads/preview/trees-slope-starry-"
              //       "sky-night-dark-11569860415go9j5qtlyi.jpg"),
              // ),
              Column(children: [
                Trending(),
                SizedBox(
                  height: 50,
                ),
                Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
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
                Interest(),
                Container(
                  height: 100,
                )
              ]),
            ]),
          ]),
        ),
      ]),
    );
  }
}
