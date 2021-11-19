import 'package:carousel_slider/carousel_slider.dart';
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
          Image.network(
            "https://res.cloudinary.com/getawayimagecloud/image/"
                "upload/v1637330671/getAwayImages/banner-"
                "template-with-asia-travel-concept-design-"
                "advertise-marketing-watercolor-vector-"
                "illustration_83728-5305_um8icm.jpg",
            fit: BoxFit.cover,
            width: size.width,
          ),
          Image.network(
            "https://res.cloudinary.com/getawayimagecloud/image/"
                "upload/v1637330713/getAwayImages/"
                "dubai-city-tour-travel-agency"
                "-banner-free-psd_xkjaev.jpg",
            fit: BoxFit.cover,
            width: size.width,
          ),
          Image.network(
            "https://res.cloudinary.com/g"
                "etawayimagecloud/image/upload/v1637330801/"
                "getAwayImages/andaman_gb6wl8.jpg",
            fit: BoxFit.cover,
            width: size.width,
          ),
        ],);
  }
}
