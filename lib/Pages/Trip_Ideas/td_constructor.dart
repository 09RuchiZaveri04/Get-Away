import 'package:final_project/Pages/Destinations/destination.dart';
import 'package:final_project/Pages/Trip_Ideas/trending_destination.dart';
import 'package:flutter/material.dart';

class TDconst extends StatefulWidget {
  final List<Destination> dest;
  const TDconst({Key? key, required this.dest}) : super(key: key);

  @override
  _TDconstState createState() => _TDconstState();
}

class _TDconstState extends State<TDconst> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: widget.dest.length,
          itemBuilder: (context, i) => TrendingDestination(
              name: widget.dest[i].name, image: widget.dest[i].image)),
    );
  }
}
