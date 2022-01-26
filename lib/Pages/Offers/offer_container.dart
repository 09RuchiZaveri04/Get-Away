import 'package:carousel_slider/carousel_slider.dart';
import 'package:final_project/Pages/Offers/offer_details.dart';
import 'package:flutter/material.dart';

class OfferContainer extends StatelessWidget {
  const OfferContainer({Key? key}) : super(key: key);
  // CarouselController buttonCarouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CarouselSlider(
      options: CarouselOptions(
        height: 250.0,
        enlargeCenterPage: true,
        autoPlay: true,
        autoPlayAnimationDuration: Duration(seconds: 1),
      ),
      items: [
        GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (_) => Offer(
                          adImg: "images/adimg4.jpg",
                        )));
          },
          child: Image.asset(
            "images/adimg4.jpg",
            fit: BoxFit.cover,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (_) => Offer(
                          adImg: "images/adimg2.jpg",
                        )));
          },
          child: Image.asset(
            "images/adimg2.jpg",
            fit: BoxFit.cover,
            width: size.width,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (_) => Offer(
                          adImg: "images/adimg3.jpg",
                        )));
          },
          child: Image.asset(
            "images/adimg3.jpg",
            fit: BoxFit.cover,
            width: size.width,
          ),
        ),
      ],
    );
  }
}
