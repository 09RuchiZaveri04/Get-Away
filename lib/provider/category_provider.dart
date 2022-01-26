import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:final_project/Pages/Destinations/destination.dart';
import 'package:flutter/material.dart';

class CategoryProvider extends ChangeNotifier {
  List<Destination> yoga = [];
  late Destination yogaData;

  Future<List<Destination>> getYogaData() async {
    QuerySnapshot<Map<String, dynamic>> yogaSnapShot = await FirebaseFirestore
        .instance
        .collection("activityBased")
        .doc("1x9ohJLky2Mw5HwP0jsR")
        .collection("yoga_act")
        .get();

    List<Destination> des = yogaSnapShot.docs.map((doc1) {
      //print(yogaSnapShot);
      return Destination.getData(doc1);
    }).toList();
    notifyListeners();
    return des;
  }
}
