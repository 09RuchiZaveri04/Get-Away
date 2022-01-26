import 'package:flutter/material.dart';

class Trending extends StatefulWidget {
  const Trending({Key? key}) : super(key: key);

  @override
  _TrendingState createState() => _TrendingState();
}

class _TrendingState extends State<Trending> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Stack(children: [
                GestureDetector(
                  // onTap: () {
                  //   Navigator.pushReplacement(
                  //       context,
                  //       MaterialPageRoute(
                  //           builder: (_) => TrendingDestination()));
                  // },
                  child: Container(
                    height: 190,
                    width: 150,
                    child: Image.network(
                      "https://moderndiplomacy.eu/wp-content/uploads/"
                      "2020/11/best-dubai-hotels-1280x720.jpg",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 125, left: 10),
                  child: Text(
                    'Top 5',
                    style: TextStyle(backgroundColor: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 150, left: 10),
                  child: Text(
                    'Dubai Hotels For A \nPlush Stay',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ]),
            ),
            SizedBox(
              width: 20,
            ),
            Stack(children: [
              Container(
                height: 190,
                width: 150,
                child: Image.network(
                  "https://www.tourism-of-india.com/blog/wp-content/"
                  "uploads/2019/05/shimla.jpg",
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 115, left: 10),
                child: Text(
                  'Top 7',
                  style: TextStyle(
                      backgroundColor: Colors.black, color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 140, left: 10),
                child: Text(
                  'Stay For A \nFairy Tale \nHoneymoon',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
            ]),
            SizedBox(
              width: 20,
            ),
            Stack(children: [
              Container(
                height: 190,
                width: 150,
                child: Image.network(
                  "https://img.traveltriangle.com/blog/wp-content/uploads/2020/01/Cover-Image-of-Places-to-Visit-in-Mussoorie_22nd-Jan.jpg",
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 130, left: 10),
                child: Text(
                  'Top 13',
                  style: TextStyle(backgroundColor: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 150, left: 10),
                child: Text(
                  'Most Booked\nDestinations',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ]),
            SizedBox(
              width: 20,
            ),
            Stack(children: [
              Container(
                height: 190,
                width: 150,
                child: Image.network(
                  "https://www.openforchristmas.com/wp-content/uploads"
                  "/2021/04/How-Do-They-Celebrate-Christmas-In-"
                  "Australia-Open-for-Christmas-1024x536.jpg",
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100, left: 10),
                child: Text(
                  'Top 8',
                  style: TextStyle(
                      backgroundColor: Colors.black, color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 122, left: 10),
                child: Text(
                  'Indian Places \nTo Celebrate \nChristmas & New \nYear',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
            ]),
            SizedBox(
              width: 20,
            ),
            Stack(children: [
              Container(
                height: 190,
                width: 150,
                child: Image.network(
                  "https://i.natgeofe.com/n/32e62f91-83ce-4ddf-a0c9-26f7d697662b/kudadoo-maldives.jpg",
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 111, left: 10),
                child: Text(
                  'Top 5',
                  style: TextStyle(backgroundColor: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 135, left: 10),
                child: Text(
                  'Stay Like A \nCelebrity At 5 \nMaldives Resorts',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ]),
            SizedBox(
              width: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Stack(children: [
                Container(
                  height: 190,
                  width: 150,
                  child: Image.network(
                    "https://media2.insideweddings.com/fileupload/2014"
                    "/08/28/DAS_4914_hr.jpg",
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100, left: 10),
                  child: Text(
                    'Top 8',
                    style: TextStyle(
                        backgroundColor: Colors.black, color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 120, left: 10),
                  child: Text(
                    'Winter \nWonderlands For\nA Perfact Stay In \nThe Hills',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
