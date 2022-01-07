import 'package:final_project/Pages/HomePage/HomeScreen.dart';
import 'package:final_project/Pages/HomePage/account_setting.dart';
import 'package:final_project/Pages/HomePage/login_page.dart';
import 'package:flutter/material.dart';

import '../HomePage/feedback.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.black,
        child: ListView(children: [
          ListTile(
            title: Text(
              'Hi Ruchi\n'
              'ruchi@gmail.com',
              style: TextStyle(color: Colors.white),
            ),
            leading: Icon(
              Icons.account_circle,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (_) => Account()));
            },
          ),
          Divider(
            color: Colors.white54,
            thickness: 2,
          ),
          ListTile(
            title: Text(
              'My Account',
              style: TextStyle(color: Colors.white),
            ),
            leading: Icon(
              Icons.contacts,
              color: Colors.white,
            ),
            onTap: () {
              print("Clicked");
            },
          ),
          Divider(
            thickness: 2,
            color: Colors.white54,
          ),
          ListTile(
            title: Text(
              'Home',
              style: TextStyle(color: Colors.white),
            ),
            leading: Icon(
              Icons.home,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
          ),
          Divider(
            color: Colors.white54,
            thickness: 2,
          ),
          ListTile(
            title: Text(
              'Setting',
              style: TextStyle(color: Colors.white),
            ),
            leading: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onTap: () {
              print("Clicked");
            },
          ),
          Divider(
            color: Colors.white54,
            thickness: 2,
          ),
          ListTile(
            title: Text(
              'FeedBack',
              style: TextStyle(color: Colors.white),
            ),
            leading: Icon(
              Icons.feedback,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => FeedBack()));
            },
          ),
          Divider(
            color: Colors.white54,
            thickness: 2,
          ),
          ListTile(
            title: Text(
              'Notification',
              style: TextStyle(color: Colors.white),
            ),
            leading: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            onTap: () {
              print("Clicked");
            },
          ),
          Divider(
            color: Colors.white54,
            thickness: 2,
          ),
          ListTile(
            title: Text(
              'LogOut',
              style: TextStyle(color: Colors.white),
            ),
            leading: Icon(
              Icons.logout,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Login()));
            },
          ),
        ]),
      ),
    );
  }
}
