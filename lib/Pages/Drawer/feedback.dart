import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeedBack extends StatefulWidget {
  // const feedback({Key? key}) : super(key: key);

  @override
  _FeedbackState createState() => _FeedbackState();
}

class _FeedbackState extends State<FeedBack> {
  double rating = 4.0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(children: [
          Image.network(
            "https://res.cloudinary.com/getawayimagecloud/image/"
                "upload/v1637332401/getAwayImages/Ybg26x_nh9a7y.jpg",
            height: size.height,
            width: size.width,
            fit: BoxFit.cover,
          ),
          SingleChildScrollView(
            child: Column(children: [
              Container(
                height: 250,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Travel Satisfaction Form",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 400,
                margin: EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Name',
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), hintText: 'Email'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text("OverAll Satisfaction:",
                            style: TextStyle(fontSize: 18)),
                      ),
                      SizedBox(width: 10),
                      // SmoothStarRating(
                      //   rating: rating,
                      //   size: 35,
                      //   filledIconData: Icons.star,
                      //   halfFilledIconData: Icons.star_half,
                      //   defaultIconData: Icons.star_border,
                      //   starCount: 5,
                      //   allowHalfRating: false,
                      //   spacing: 2.0,
                      //   onRated: (value) {
                      //     setState(() {
                      //       rating = value;
                      //     });
                      //   },
                      // ),
                    ]),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), hintText: 'Message'),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Submit",
                        style: TextStyle(fontSize: 25),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 40)),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}
