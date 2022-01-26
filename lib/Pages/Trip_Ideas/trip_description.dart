import 'package:final_project/Pages/CustomWidgets/best_time_container.dart';
import 'package:final_project/Pages/HomePage/HomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class Description extends StatelessWidget {
  final String imgName;
  final String name;
  final String caption;
  final String description;
  Description(
      {required this.imgName,
      required this.name,
      required this.caption,
      required this.description});

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
            imgName,
            // "https://thumbs.dreamstime.com/z/prag-mahal-aina-old-fort-bhuj-city"
            // "-india-has-very-famous-gujarat-138084546.jpg",
            fit: BoxFit.cover,
            height: size.height,
          ),
          SlidingUpPanel(
            isDraggable: true,
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
                      name,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      caption,
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
                      child: Text(description
                          // "Bhuj is famous for its handicrafts, hills, white deserts,"
                          // " beautiful virgin sea beaches, various forts and above all "
                          // "Dholaveera, one of the five largest Harappan sites and among "
                          // "the most prominent archaeological sites in India belonging "
                          // "to the Indus Valley Civilization."
                          ),
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
                    SizedBox(
                      height: 5,
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Book Your Trip",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(children: [
                      Text("From", style: TextStyle(fontSize: 16)),
                      Text(
                        "  Ahmedabad",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ]),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: Colors.black26,
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Row(children: [
                                Icon(Icons.airplane_ticket_sharp),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Travel",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ]),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "Flight to Mumbai",
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(children: [
                              Text(
                                '\u{20B9}${1234}',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              Text("onwards"),
                              Row(children: [
                                Icon(Icons.flight),
                                Icon(Icons.ten_k),
                              ]),
                            ]),
                          ),
                        ]),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Text(
                                "VIEW DETAILS",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Divider(
                          thickness: 2,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(children: [
                            Text("Flight"),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                            ),
                            Column(
                              children: [
                                Text(
                                  '\u{20B9}${1234}',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Text("onwards"),
                                Row(children: [
                                  Icon(Icons.flight),
                                  Icon(Icons.ten_k),
                                ]),
                              ],
                            ),
                          ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Text(
                                "VIEW DETAILS",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: Colors.black26,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.account_balance_outlined),
                                Text(
                                  "  Stay",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  child: Image.network(
                                    "https://www.khbuzz.com/wp-content/uploads/2017/09/ch9988-SAN-AUGUSTIN-COLLAGE-RIDIMENSIONATO.jpg",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        " Luxury 5 Star Hotels",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                      Text(
                                        " 1 Option",
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ]),
                                Spacer(),
                                Column(children: [
                                  Text(
                                    "\u{20B9}${"7,250"}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  Text(
                                    "Avg. Price",
                                    style: TextStyle(fontSize: 14),
                                  )
                                ]),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  child: Image.network(
                                    "https://drop.ndtv.com/albums/BUSINESS/sahara_subrata/slide1_collage.jpg",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        " 3 & 4 Star Hotels",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                      Text(
                                        " 10 Option",
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ]),
                                Spacer(),
                                Column(children: [
                                  Text(
                                    "\u{20B9}${"4,522"}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  Text(
                                    "Avg. Price",
                                    style: TextStyle(fontSize: 14),
                                  )
                                ]),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  child: Image.network(
                                    "https://media-cdn.tripadvisor.com/media/photo-i/0d/3e/58/0f/the-fern-bhavnagar-iscon.jpg",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        " Villas & Unique Stays",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                      Text(
                                        " 2 Option",
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ]),
                                Spacer(),
                                Column(children: [
                                  Text(
                                    "\u{20B9}${"4,750"}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  Text(
                                    "Avg. Price",
                                    style: TextStyle(fontSize: 14),
                                  )
                                ]),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  child: Image.network(
                                    "https://blog.staah.com/wp-content/uploads/2019/12/Hotel-Collage.jpg",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        " Apartments & HomeStays",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                      Text(
                                        " 3 Option",
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ]),
                                Spacer(),
                                Column(children: [
                                  Text(
                                    "\u{20B9}${"8,916"}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  Text(
                                    "Avg. Price",
                                    style: TextStyle(fontSize: 14),
                                  )
                                ]),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "VIEW ALL>>",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            )
                          ],
                        ),
                      ),
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
