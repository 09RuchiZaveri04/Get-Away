import 'package:flutter/material.dart';

class SpecialTrip extends StatelessWidget {
  const SpecialTrip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        height: 170,
        width: size.width,
        child: Row(
          children: [
            Image.network(
              "https://t4.ftcdn.net/jpg/02/61/01/87/360_F_261018762_f15Hmze7A0oL58Uwe7SrDKNS4fZIjLiF.jpg",
              width: size.width,
            )
          ],
        ));
  }
}
