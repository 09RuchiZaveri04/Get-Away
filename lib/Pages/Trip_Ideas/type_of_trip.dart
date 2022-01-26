import 'package:final_project/Pages/CustomWidgets/custome_drop_down.dart';
import 'package:final_project/Pages/CustomWidgets/special_destination.dart';
import 'package:final_project/Pages/HomePage/HomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TripIdeas extends StatelessWidget {
  //const ({Key? key}) : super(key: key);
  final String name;
  final String image1;
  final String image2;
  final String image3;
  final int nop;
  TripIdeas(
      {required this.name,
      required this.image1,
      required this.image2,
      required this.image3,
      required this.nop});

//   @override
//   State<TripIdeas> createState() => _TripIdeasState();
// }
//
// class _TripIdeasState extends State<TripIdeas> {
//   @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              color: Colors.black54,
              height: 170,
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
                          size: 24,
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (_) => HomeScreen()));
                        }),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Explore Trip Ideas From',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            DropDown(),
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
            SpecialDestination(
              city: name,
              img_1: image1,
              img_2: image2,
              img_3: image3,
              lPlace: nop,
              cName: Colors.pink,
            ),
            SpecialDestination(
              city: "Shimla",
              img_1: "https://www.banjaracamps.com/imag"
                  "es/hero-banner/spiti-winter-207.jpg",
              img_3:
                  "https://static2.tripoto.com/media/filter/tst/img/461838/TripDocument/1518335958_108035562.jpg",
              img_2: "https://pictures."
                  "trodly.com/image/activity/1066/si"
                  "ze-885x420/mode-crop/598c2dc93ca61.jpg",
              lPlace: 10,
              cName: Colors.green,
            ),
            SpecialDestination(
              city: "7 Sister",
              img_1:
                  "https://www.travelogyindia.com/storage/app/article/748/seven-s"
                  "isters-of-india-complete-infor"
                  "mation-about-north-east-india-states-thumb.jpg",
              img_2: "https://img.veenaworld.com/wp-content/uploads/2021/01/A-"
                  "Complete-Travel-Guide-to-the-Seven-Sister-States-of-India-3-scaled.jpg",
              img_3: "https://www.scaryforkids.com/pics/seven-sisters.jpg",
              lPlace: 10,
              cName: Colors.deepOrange,
            ),
            SpecialDestination(
              city: "Kerala",
              img_1: "https://cdn.britannica.com/31/163"
                  "1-050-23506727/vegetation-waterways-state-Kerala-India.jpg",
              img_2:
                  "https://www.tripsavvy.com/thmb/JAfQ1gYqIsV-qbajT-UPXCumaIE=/76"
                  "8x512/filters:no_upscale():max_bytes(150000):strip_icc("
                  ")/Jatayu-National-Park-Kerala-1024x512_Snapseed-5aafa43eff"
                  "1b780036c19082.jpg",
              img_3:
                  "https://packages.cdnpath.com/HotelDealImages/63719765422844469"
                  "2_M.jpg",
              lPlace: 10,
              cName: Colors.purple,
            ),
            Text(
              "Book Your Trip",
            )
          ]),
        ),
      ),
    );
  }
}
