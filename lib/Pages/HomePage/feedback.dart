import 'package:final_project/Pages/CustomWidgets/Custom_button.dart';
import 'package:final_project/Pages/CustomWidgets/text_form_field.dart';
//import 'package:final_project/Pages/Drawer/Custom_drawer.dart';
import 'package:final_project/Pages/HomePage/HomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FeedBack extends StatefulWidget {
  // const feedback({Key? key}) : super(key: key);

  @override
  _FeedbackState createState() => _FeedbackState();
}

String p =
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
RegExp regExp = new RegExp(p);

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
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: new Icon(
                    Icons.arrow_back,
                    size: 32,
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (_) => HomeScreen()));
                  },
                ),
              ),
              Container(
                height: 250,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Travel Satisfaction Form",
                      style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.normal,
                          fontFamily: 'Lobster',
                          shadows: [
                            Shadow(
                                blurRadius: 5,
                                color: Colors.pinkAccent,
                                offset: Offset(2.0, 2.0))
                          ]),
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
                    TextFormField(
                      validator: (value) {
                        if (value!.length < 6) {
                          return "Your Name Is Too Short";
                        } else if (value == "") {
                          return "Please Fill Your Name";
                        }
                        return "";
                      },
                      decoration: InputDecoration(
                          hintText: "Full Name",
                          hintStyle: TextStyle(color: Colors.black),
                          border: OutlineInputBorder()),
                    ),
                    SizedBox(height: 10),
                    MyTextFormField(
                      name: "Email",
                      validator: (value) {
                        if (value == "") {
                          return "Please Fill Email";
                        } else if (!regExp.hasMatch(value!)) {
                          return "Email Is Invalide";
                        }
                        return "";
                      },
                      onChanged: (String value) {},
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text("OverAll Satisfaction:",
                            style: TextStyle(fontSize: 18)),
                      ),
                      SizedBox(width: 10),
                      RatingBar.builder(
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemBuilder: (context, _) => Icon(
                          Icons.flight,
                          color: Colors.redAccent,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
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
                    CustomButton(
                      buttonName: "Login",
                      onPress: () {},
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
