import 'package:final_project/Pages/Trip_Ideas/trip_description.dart';
import 'package:flutter/material.dart';

class SpecialDestination extends StatelessWidget {
  // const SpecialDestination({Key? key}) : super(key: key);
  final String city;
  final String img_1;
  final String img_2;
  final String img_3;
  final lPlace;
  final Color cName;

  SpecialDestination({
    required this.city,
    required this.img_1,
    required this.img_2,
    required this.img_3,
    required this.lPlace,
    required this.cName,
  });
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: 350,
      width: size.width,
      color: Colors.black,
      child: Padding(
        padding: EdgeInsets.only(left: 10, top: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(children: [
            Text(
              "Travelling To " + city + "?",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Spacer(),
            Padding(
                padding: EdgeInsets.only(right: 10, top: 10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (_) => Description(
                                  name: city,
                                  description:
                                      "The city is surrounded by hills and dotted with "
                                      "forts. Houses with pink latticed windows line "
                                      "the streets, and look almost magical at sunset.",
                                  imgName: img_1,
                                  caption: 'Heart Of Kutch',
                                )));
                  },
                  child: Text(
                    'Explore  >>',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                )),
          ]),
          Text(
            'Continue planning your trip',
            style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.white60),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Stack(children: [
              Container(
                height: 230,
                color: Colors.white60,
              ),
              Container(
                height: 100,
                color: cName,
              ),
              Row(children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: Container(
                      width: 110,
                      height: 110,
                      decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(
                                img_1,
                              ),
                              fit: BoxFit.fill)),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: Container(
                      width: 110,
                      height: 110,
                      decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(img_2), fit: BoxFit.fill)),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: Container(
                      width: 110,
                      height: 110,
                      decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(img_3), fit: BoxFit.fill)),
                    ),
                  ),
                ),
              ]),
              Padding(
                  padding: EdgeInsets.only(left: 5, top: 180),
                  child: Text(
                    'Best Time To Visit',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.white),
                  )),
              Padding(
                  padding: EdgeInsets.only(left: 135, top: 180),
                  child: Text(
                    '$lPlace +  Most Loved \n\t\t\t  \tPlaces',
                    //'6+ Most Loved \n\t\t\t  \tPlaces',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.white),
                  )),
              Padding(
                  padding: EdgeInsets.only(left: 269, top: 180),
                  child: Text(
                    'Hotels,Villas\n\t\t\t & more',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.white),
                  )),
              Padding(
                  padding: EdgeInsets.only(left: 30, top: 155),
                  child: Text(
                    'Overview',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                  )),
              Padding(
                  padding: EdgeInsets.only(left: 135, top: 155),
                  child: Text(
                    'Things to See',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                  )),
              Padding(
                  padding: EdgeInsets.only(left: 269, top: 155),
                  child: Text(
                    'Stay Options',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                  )),
            ]),
          ),
          Divider(
            height: 35,
            color: Colors.grey,
            thickness: 1,
          ),
        ]),
      ),
    );
  }
}
