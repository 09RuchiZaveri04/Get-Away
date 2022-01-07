import 'package:final_project/Pages/CustomWidgets/best_time_container.dart';
import 'package:final_project/Pages/HomePage/HomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class Description extends StatefulWidget {
  const Description({Key? key}) : super(key: key);

  @override
  _DescriptionState createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  @override
  Widget build(BuildContext context) {
    BorderRadiusGeometry radius = BorderRadius.only(
      topLeft: Radius.circular(24.0),
      topRight: Radius.circular(24.0),
    );

    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (_) => HomeScreen()));
            },
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.share,
                  color: Colors.black,
                ))
          ],
          backgroundColor: Colors.white54,
        ),
        body: Stack(children: [
          Image.network(
            "https://content3.jdmagicbox.com/comp/bhuj/c6/9999p2832"
            ".2832.141212152656.b6c6/catalogue/chattardi-bhuj-ho-bhuj-tourist"
            "-attraction-4d6ed35.jpg",
            fit: BoxFit.cover,
            height: size.height,
          ),
          SlidingUpPanel(
            //backdropColor: Colors.black,
            panel: Padding(
              padding: const EdgeInsets.all(15.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "BHUJ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      "Heart Of Kutch",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ActionChip(
                            onPressed: () {},
                            label: Text("Overview"),
                          ),
                          ActionChip(
                            onPressed: () {},
                            label: Text("Things To Do"),
                          ),
                          ActionChip(
                            onPressed: () {},
                            label: Text("Book"),
                          ),
                          ActionChip(
                            onPressed: () {},
                            label: Text("Nearby"),
                          ),
                          ActionChip(
                            onPressed: () {},
                            label: Text("Travel Stories"),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: size.width,
                      child: Text(
                          "Bhuj is famous for its handicrafts, hills, white deserts,"
                          " beautiful virgin sea beaches, various forts and above all "
                          "Dholaveera, one of the five largest Harappan sites and among "
                          "the most prominent archaeological sites in India belonging "
                          "to the Indus Valley Civilization."),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Best Time to Visit",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(children: [
                        SizedBox(
                          width: 10,
                        ),
                        BestTime(
                            month: "Oct-Feb",
                            season: "PEAK SEASON",
                            crowd: "More Crowd",
                            weather: "The weather is comparatively\n cooler",
                            view:
                                "Sightseeing, beaches fun and\n water sports"),
                        SizedBox(
                          width: 10,
                        ),
                        BestTime(
                            month: "Jul-Sep",
                            season: "MODERATE SEASON",
                            crowd: "Average Crowd",
                            weather: "Heavy to light rainfall",
                            view: "The lush green landscapes"),
                        SizedBox(
                          width: 10,
                        ),
                        BestTime(
                            month: "Mar-Jun",
                            season: "OFF-SEASON",
                            crowd: "Less Crowd",
                            weather:
                                "The city is at its hottest during\nthis time",
                            view: "Peaceful vacation and secluded\nbeaches"),
                      ]),
                    ),
                  ],
                ),
              ),
            ),
            collapsed: Container(
              decoration:
                  BoxDecoration(color: Colors.white, borderRadius: radius),
              child: Icon(
                Icons.arrow_drop_up_outlined,
                size: 40,
              ),
            ),
            borderRadius: radius,
          ),
        ]),
      ),
    );
  }
}
