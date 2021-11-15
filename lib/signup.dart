import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'login.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
bool obserText = true;
String email = "";
String password = "";

class _SignUpState extends State<SignUp> {
  void validation() async {
    final FormState? _form = _formKey.currentState;
    if (_form!.validate()) {
      try {
        final result = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);
        print(result.user!.uid);
      } on PlatformException catch (e) {
        print(e.message.toString());
      }
    } else {
      print("no");
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(children: [
          Image.network(
            "https://cdn.wallpapersafari.com/73/11/Ybg26x.jpg",
            height: size.height,
            width: size.width,
            fit: BoxFit.cover,
          ),
          SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Container(
                child: Column(
                  children: [
                    Container(
                      height: 250,
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Register",
                            style: TextStyle(
                                fontSize: 50, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: double.maxFinite,
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      width: double.infinity,
                      child: Column(
                        children: [
                          TextFormField(
                            validator: (value) {
                              if (value!.length < 6) {
                                return "UserName Is Too Short";
                              } else if (value == "") {
                                return "Please Fill UserName";
                              }
                              return "";
                            },
                            decoration: InputDecoration(
                                hintText: "UserName",
                                hintStyle: TextStyle(color: Colors.black),
                                border: OutlineInputBorder()),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            onChanged: (value) {
                              setState(() {
                                email = value;
                              });
                            },
                            validator: (value) {
                              if (value == "") {
                                return "Please Fill Email";
                              } else if (!RegExp(
                                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                  .hasMatch(value!)) {
                                return "Email Is Invalide";
                              }
                              return "";
                            },
                            decoration: InputDecoration(
                                hintText: "Email",
                                hintStyle: TextStyle(color: Colors.black),
                                border: OutlineInputBorder()),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            obscureText: obserText,
                            onChanged: (value) {
                              setState(() {
                                password = value;
                              });
                            },
                            validator: (value) {
                              if (value == "") {
                                return "Please Fill Password";
                              } else if (value!.length < 8) {
                                return "Password Is Too Short";
                              }
                              return "";
                            },
                            decoration: InputDecoration(
                                hintText: "Password",
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      obserText = !obserText;
                                    });

                                    FocusScope.of(context).unfocus();
                                  },
                                  child: Icon(
                                    obserText == true
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: Colors.black,
                                  ),
                                ),
                                hintStyle: TextStyle(color: Colors.black),
                                border: OutlineInputBorder()),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            validator: (value) {
                              if (value == "") {
                                return "PLease Fill Phone Number";
                              } else if (value!.length < 11) {
                                return "Phone NumberMust Be 10";
                              }
                              return "";
                            },
                            decoration: InputDecoration(
                                hintText: "Phone No.",
                                hintStyle: TextStyle(color: Colors.black),
                                border: OutlineInputBorder()),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              validation();
                            },
                            child: Text(
                              "SignUp",
                              style: TextStyle(fontSize: 25),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.blueGrey,
                                //padding: const EdgeInsets.all(25),
                                padding: const EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 40)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(children: [
                            Text("I Have Not Account"),
                            SizedBox(
                              width: 5,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: InkWell(
                                  child: Text("SignUp",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.blueAccent)),
                                  onTap: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => Login()));
                                  }),
                            )
                          ])
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
