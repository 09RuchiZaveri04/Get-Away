//import 'dart:async';

import 'package:final_project/provider/category_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Pages/HomePage/HomeScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider<CategoryProvider>(
            create: (context) => CategoryProvider(),
          ),

          // Provider<CategoryProvider>(
          //   create: (context) => CategoryProvider(),
          // ),
        ],
        child: StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              return HomeScreen();
            }),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   void initState() {
//     super.initState();
//     Timer(
//         Duration(seconds: 2),
//         () => Navigator.pushReplacement(
//             context, MaterialPageRoute(builder: (context) => HomeScreen())));
//   }

// Widget build(BuildContext context) {
//   Size size = MediaQuery.of(context).size;
//   return SafeArea(
//     child: Scaffold(
//       body: Stack(
//         children: [
//           Image.network(
//               "https://res.cloudinary.com/getawayimagecloud/"
//               "image/upload/v1637331620/getAwayImages/splash_yw1j4w.jpg",
//               width: size.width,
//               fit: BoxFit.cover,
//               height: size.height),
//           Center(
//             child: Text(
//               "Get-A-Way",
//               style: TextStyle(
//                   fontSize: 50,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.deepOrangeAccent,
//                   fontFamily: 'static',
//                   shadows: [
//                     Shadow(
//                         blurRadius: 5,
//                         color: Colors.yellow,
//                         offset: Offset(2.0, 2.0))
//                   ]),
//             ),
//           ),
//         ],
//       ),
//     ),
//   );
// }
//}
