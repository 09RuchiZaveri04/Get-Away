import 'package:final_project/Pages/HomePage/HomeScreen.dart';
import 'package:final_project/Pages/Trip_Ideas/trip_description.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TripIdeas extends StatefulWidget {
  //const ({Key? key}) : super(key: key);

  @override
  State<TripIdeas> createState() => _TripIdeasState();
}

class _TripIdeasState extends State<TripIdeas> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              color: Colors.black54,
              height: 150,
              width: size.width,
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(children: [
                    IconButton(
                        icon: new Icon(
                          Icons.arrow_back,
                          size: 22,
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (_) => HomeScreen()));
                        }),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Column(children: [
                        Text(
                          'Explore Trip Ideas From',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Row(children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              'Ahmedabad',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white54,
                                  fontSize: 16),
                            ),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            size: 30,
                            color: Colors.white54,
                          )
                        ])
                      ]),
                    ),
                    Spacer(),
                    Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.save,
                          size: 33,
                        )),
                    Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.account_circle_sharp,
                          size: 33,
                        )),
                  ]),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      width: size.width,
                      height: 45,
                      color: Colors.white,
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search City, Thing to do',
                            prefixIcon: Icon(Icons.search),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(children: [
                    Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          'Discover Places',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.white54),
                        )),
                    Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          'Travel Stories',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.white54),
                        ))
                  ]),
                ],
              ),
            ),
            Container(
              height: 350,
              width: size.width,
              color: Colors.black,
              child: Padding(
                padding: EdgeInsets.only(left: 10, top: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        Text(
                          'Travelling to Bhuj?',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Spacer(),
                        Padding(
                            padding: EdgeInsets.only(right: 10, top: 10),
                            child: Text(
                              'Explore',
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.only(right: 10, top: 10),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.blue,
                            size: 15,
                          ),
                        )
                      ]),
                      Text(
                        'Continue planning your trip',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white60),
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
                            color: Colors.pink,
                          ),
                          Row(children: [
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding: EdgeInsets.only(top: 40),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => Description()));
                                  },
                                  child: Container(
                                    width: 110,
                                    height: 110,
                                    decoration: new BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                "https://live.staticflickr.com/8313/8056393177_10d38b6ccc_b.jpg"),
                                            fit: BoxFit.fill)),
                                  ),
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
                                          image: NetworkImage(
                                              "https://www.holidify.com/images/cmsuploads/compressed/Prag_Mahal_Palace_Bhuj_20190116142925.jpg"),
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
                                          image: NetworkImage(
                                              "https://media-cdn.tripadvisor.com/media/photo-s/07/54/b4/15/wonderful.jpg"),
                                          fit: BoxFit.fill)),
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
                                '6+ Most Loved \n\t\t\t  \tPlaces',
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
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 14),
                              )),
                          Padding(
                              padding: EdgeInsets.only(left: 135, top: 155),
                              child: Text(
                                'Things to See',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 14),
                              )),
                          Padding(
                              padding: EdgeInsets.only(left: 269, top: 155),
                              child: Text(
                                'Stay Options',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 14),
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
            ),
            Container(
              height: 350,
              width: size.width,
              color: Colors.black,
              child: Padding(
                padding: EdgeInsets.only(left: 10, top: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        Text(
                          'Travelling to Shimla?',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Spacer(),
                        Padding(
                            padding: EdgeInsets.only(right: 10, top: 10),
                            child: Text(
                              'Explore',
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.only(right: 10, top: 10),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.blue,
                            size: 15,
                          ),
                        )
                      ]),
                      Text(
                        'Continue planning your trip',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white60),
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
                            color: Colors.deepOrange,
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
                                              "https://www.banjaracamps.com/imag"
                                              "es/hero-banner/spiti-winter-207.jpg"),
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
                                          image: NetworkImage(
                                              "https://pictures."
                                              "trodly.com/image/activity/1066/si"
                                              "ze-885x420/mode-crop/598c2dc93ca61.jpg"),
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
                                          image: NetworkImage(
                                              "https://static2.tripoto.com/media/filter/tst/img/461838/TripDocument/1518335958_108035562.jpg"),
                                          fit: BoxFit.fill)),
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
                                '10+ Most Loved \n\t\t\t  \tPlaces',
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
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 14),
                              )),
                          Padding(
                              padding: EdgeInsets.only(left: 135, top: 155),
                              child: Text(
                                'Things to See',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 14),
                              )),
                          Padding(
                              padding: EdgeInsets.only(left: 269, top: 155),
                              child: Text(
                                'Stay Options',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 14),
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
            ),
            Container(
              height: 350,
              width: size.width,
              color: Colors.black,
              child: Padding(
                padding: EdgeInsets.only(left: 10, top: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        Text(
                          'Travelling to 7 Sister?',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Spacer(),
                        Padding(
                            padding: EdgeInsets.only(right: 10, top: 10),
                            child: Text(
                              'Explore',
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.only(right: 10, top: 10),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.blue,
                            size: 15,
                          ),
                        )
                      ]),
                      Text(
                        'Continue planning your trip',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white60),
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
                            color: Colors.teal,
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
                                              "https://www.travelogyindia.com/st"
                                              "orage/app/article/748/seven-s"
                                              "isters-of-india-complete-infor"
                                              "mation-about-north-east-india-states-thumb.jpg"),
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
                                          image: NetworkImage(
                                              "http://delicateannex.com/wp-content/uploads/2021/02/seven_sisters-720x606.png"),
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
                                          image: NetworkImage(
                                              "https://www.amastaysandtrails.com"
                                              "/content/dam/ama/Our-hotels/C"
                                              "oorg/rare-earth/images_new/ra"
                                              "re_earth_facade.jpg/_jcr_cont"
                                              "ent/renditions/cq5dam.web.1280.1280.jpeg"),
                                          fit: BoxFit.fill)),
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
                                '10+ Most Loved \n\t\t\t  \tPlaces',
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
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 14),
                              )),
                          Padding(
                              padding: EdgeInsets.only(left: 135, top: 155),
                              child: Text(
                                'Things to See',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 14),
                              )),
                          Padding(
                              padding: EdgeInsets.only(left: 269, top: 155),
                              child: Text(
                                'Stay Options',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 14),
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
            ),
            Container(
              height: 350,
              width: size.width,
              color: Colors.black,
              child: Padding(
                padding: EdgeInsets.only(left: 10, top: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        Text(
                          'Travelling to Kerala?',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Spacer(),
                        Padding(
                            padding: EdgeInsets.only(right: 10, top: 10),
                            child: Text(
                              'Explore',
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.only(right: 10, top: 10),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.blue,
                            size: 15,
                          ),
                        )
                      ]),
                      Text(
                        'Continue planning your trip',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white60),
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
                            color: Colors.purple,
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
                                              "https://cdn.britannica.com/31/163"
                                              "1-050-23506727/vegetation-wat"
                                              "erways-state-Kerala-India.jpg"),
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
                                          image: NetworkImage(
                                              "https://www.tripsavvy.com/thmb/JA"
                                              "fQ1gYqIsV-qbajT-UPXCumaIE=/76"
                                              "8x512/filters:no_upscale()"
                                              ":max_bytes(150000):strip_icc("
                                              ")/Jatayu-National-Park-Kerala-"
                                              "1024x512_Snapseed-5aafa43eff"
                                              "1b780036c19082.jpg"),
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
                                          image: NetworkImage(
                                              "https://packages.cdnpath.com/Hote"
                                              "lDealImages/63719765422844469"
                                              "2_M.jpg"),
                                          fit: BoxFit.fill)),
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
                                '10+ Most Loved \n\t\t\t  \tPlaces',
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
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 14),
                              )),
                          Padding(
                              padding: EdgeInsets.only(left: 135, top: 155),
                              child: Text(
                                'Things to See',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 14),
                              )),
                          Padding(
                              padding: EdgeInsets.only(left: 269, top: 155),
                              child: Text(
                                'Stay Options',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 14),
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
            ),
          ]),
        ),
      ),
    );
  }
}
