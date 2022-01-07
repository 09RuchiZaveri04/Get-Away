import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Interest extends StatelessWidget {
  const Interest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(children: [
                Container(
                  color: Colors.red,
                  height: 150,
                  width: 150,
                  child: Image.network(
                    "https://www.incimages.com/uploaded_files/image/1920x1080/getty_511013546_363734.jpg",
                    fit: BoxFit.fill,
                  ),
                ),
                Text(
                  'International under\n50000',
                  style: TextStyle(
                      color: Colors.cyan,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                )
              ]),
            ),
            SizedBox(
              width: 10,
            ),
            Column(children: [
              Container(
                color: Colors.red,
                height: 150,
                width: 150,
                child: Image.network(
                  "https://warnercnr.colostate.edu/wp-content/uploads/sites/2/2017/04/shutterstock_428626417-1024x683.jpg",
                  fit: BoxFit.fill,
                ),
              ),
              Text(
                'Weekend adventure\n spot',
                style: TextStyle(
                    color: Colors.pink,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              )
            ]),
            SizedBox(
              width: 10,
            ),
            Column(children: [
              Container(
                color: Colors.red,
                height: 150,
                width: 150,
                child: Image.network(
                  "https://p3n3w9t2.rocketcdn.me/wp-content/uploads/2019/01/pilgrimage-sites-india-header.jpg",
                  fit: BoxFit.fill,
                ),
              ),
              Text(
                'Pilgrimage spots\nunder 20000',
                style: TextStyle(
                    color: Colors.cyan,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              )
            ]),
            SizedBox(
              width: 10,
            ),
            Column(children: [
              Container(
                color: Colors.red,
                height: 150,
                width: 150,
                child: Image.network(
                  "https://lotusarise.com/wp-content/uploads/2021/01/Wildlife-Problems-of-Wildlife-Wildlife-Conservation.jpg",
                  fit: BoxFit.fill,
                ),
              ),
              Text(
                'Wildlife\nhotspots',
                style: TextStyle(
                    color: Colors.pink,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              )
            ]),
            SizedBox(
              width: 10,
            ),
            Column(children: [
              Container(
                color: Colors.red,
                height: 150,
                width: 150,
                child: Image.network(
                  "https://wallpaperaccess.com/full/899763.jpg",
                  fit: BoxFit.fill,
                ),
              ),
              Text(
                'Romantic \nDestination',
                style: TextStyle(
                    color: Colors.cyan,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              )
            ]),
          ],
        ),
      ),
    );
  }
}
