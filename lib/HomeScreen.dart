import 'package:carousel_slider/carousel_slider.dart';
import 'package:final_project/feedback.dart';
import 'package:final_project/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CarouselController buttonCarouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      //backgroundColor: Colors.black,
      drawer: Drawer(
        child: Container(
          color: Colors.black,
          child: ListView(children: [
            ListTile(
              title: Text(
                'Home',
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
            ),
            ListTile(
              title: Text(
                'Setting',
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(
                Icons.settings,
                color: Colors.white,
              ),
              onTap: () {
                print("Clicked");
              },
            ),
            ListTile(
              title: Text(
                'FeedBack',
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(
                Icons.feedback,
                color: Colors.white,
              ),
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => feedBack()));
              },
            ),
            ListTile(
              title: Text(
                'Notification',
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(
                Icons.notifications,
                color: Colors.white,
              ),
              onTap: () {
                print("Clicked");
              },
            ),
            ListTile(
              title: Text(
                'LogOut',
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(
                Icons.logout,
                color: Colors.white,
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login()));
              },
            ),
          ]),
        ),
      ),
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
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUxRxQOaef1JaB4J2fPMfzCKvp2ucsxiPFbw&usqp=CAU",
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
                CarouselSlider(
                    carouselController: buttonCarouselController,
                    options: CarouselOptions(
                      height: 250.0,
                      enlargeCenterPage: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 10),
                    ),
                    items: [
                      Image.network(
                        "https://img.freepik.com/free-vector/banner-template-with-asia-travel-concept-design-advertise-marketing-watercolor-vector-illustration_83728-5305.jpg?size=338&ext=jpg",
                        fit: BoxFit.cover,
                        width: size.width,
                      ),
                      Image.network(
                        "https://indiater.com/wp-content/uploads/2019/03/dubai-city-tour-travel-agency-banner-free-psd.jpg",
                        fit: BoxFit.cover,
                        width: size.width,
                      ),
                      Image.network(
                        "https://www.urbanyatra.com/wp-content/uploads/2021/09/andaman.jpg",
                        fit: BoxFit.cover,
                        width: size.width,
                      ),
                    ]),
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
                                "https://www.intermiles.com/_next/image?url=https://www.intermilesresources.com/iwov-resources/images/blog/10-amazing-indian-roads-for-a-long-drive/long-drive-mobile-414x233.jpg&w=640&q=75",
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
                            "https://coolthemestores.com/wp-content/uploads/2021/06/mountain-wallpaper-background-1.jpg",
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
                            "http://www.travellingadda.com/wp-content/uploads/2021/03/honeymoon-destination-1.jpg",
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
                            "https://www.lifewire.com/thmb/wwxq7jp-2tjL6nq_2B0YxWKXw4E=/1920x1080/filters:fill(auto,1)/tropical-beach-wallpaper-beach-backgrounds-587fbb765f9b584db3241860.jpg",
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
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvw5TjJykaBdaO3NP5fSXFKmOI_92ZPxDZnw&usqp=CAU"),
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
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUl9tcrlgLz1otvqjaDyrSYT2ISFSo10xjgA&usqp=CAU"),
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
                                      "https://www.indianluxurytrains.com/blog/wp-content/uploads/2015/02/ananda-yoga-retreat.jpg"),
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
