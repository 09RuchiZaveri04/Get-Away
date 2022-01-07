import 'package:flutter/material.dart';

class BestTime extends StatelessWidget {
  //const BestTime({Key? key}) : super(key: key);
  final String month;
  final String season;
  final String crowd;
  final String weather;
  final String view;

  BestTime(
      {required this.month,
      required this.season,
      required this.crowd,
      required this.weather,
      required this.view});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 250,
      color: Colors.black26,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              month,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              season,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange),
            ),
            Divider(
              thickness: 2,
              color: Colors.black45,
            ),
            Row(
              children: [
                Icon(Icons.group),
                SizedBox(
                  width: 5,
                ),
                Text(crowd)
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(Icons.light_mode),
                SizedBox(
                  width: 5,
                ),
                Text(weather),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(Icons.add_location_sharp),
                SizedBox(
                  width: 5,
                ),
                Text(view)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
