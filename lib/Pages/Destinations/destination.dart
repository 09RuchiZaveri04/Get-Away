import 'package:cloud_firestore/cloud_firestore.dart';

class Destination {
  final String name;
  final String image;

  Destination({
    required this.name,
    required this.image,
  });
  static Destination getData(DocumentSnapshot<Map<String, dynamic>> doc) {
    final data = doc.data();
    //print(data);
    return Destination(name: data?["name"], image: data?["image"]);
  }
}
