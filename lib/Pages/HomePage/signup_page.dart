import 'package:final_project/Pages/CustomWidgets/Custom_button.dart';
import 'package:final_project/Pages/CustomWidgets/change_screen.dart';
import 'package:final_project/Pages/CustomWidgets/password_textform.dart';
import 'package:final_project/Pages/CustomWidgets/text_form_field.dart';
import 'package:final_project/Pages/HomePage/feedback.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'login_page.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool obserText = true;
  String p =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
  // RegExp regExp = new RegExp(p);
  String email = "";
  String password = "";
  final formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();

  @override
  void initState() {
    Firebase.initializeApp();
    super.initState();
  }

  void validation() async {
    if (formKey.currentState!.validate()) {
      print('yes');
      formKey.currentState!.save();
      try {
        var result = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);
        print(result.user?.uid);
      } on PlatformException catch (e) {
        print(e.message.toString());
        scaffoldMessengerKey.currentState!
            .showSnackBar(SnackBar(content: Text(e.message.toString())));
      }
    } else {
      print("SignUp no");
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: scaffoldMessengerKey,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(children: [
          Image.network(
            "https://res.cloudinary.com/getawayimagecloud/image/"
            "upload/v1637332401/getAwayImages/Ybg26x_nh9a7y.jpg",
            height: size.height,
            width: size.width,
            fit: BoxFit.cover,
          ),
          SingleChildScrollView(
            child: Form(
              key: formKey,
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
                              fontSize: 50,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'Lobster',
                              shadows: [
                                Shadow(
                                    blurRadius: 5,
                                    color: Colors.pinkAccent,
                                    offset: Offset(2.0, 2.0))
                              ]),
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
                        // MyTextFormField(validator: (value){
                        //   if (value!.length < 6) {
                        //     return "UserName Is Too Short";
                        //   } else if (value == "") {
                        //     return "Please Fill UserName";
                        //   }
                        //   return "";
                        //
                        // }, name: 'UserName', onChanged: (String value) {  },),
                        SizedBox(
                          height: 20,
                        ),
                        MyTextFormField(
                          name: "Email",
                          validator: (value) {
                            if (value == "") {
                              return "Please Fill Email";
                            } else if (!regExp.hasMatch(value!)) {
                              return "Email Is Invalid";
                            }
                            return null;
                          },
                          onSaved: (value) {
                            setState(() {
                              if (value != null) {
                                email = value;
                                print(email);
                              }
                            });
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        PasswordTextForm(
                            validator: (value) {
                              if (value == "") {
                                return "Please Fill Password";
                              } else if (value!.length < 8) {
                                return "Password Is Invalide";
                              }
                              return null;
                            },
                            name: "Password",
                            obserText: !obserText,
                            onTap: () {
                              FocusScope.of(context).unfocus();
                              setState(() {
                                obserText = !obserText;
                              });
                            },
                            onSaved: (value) {
                              setState(() {
                                if (value != null) {
                                  password = value;
                                  // print(password);
                                }
                              });
                            }),
                        SizedBox(
                          height: 20,
                        ),
                        // MyTextFormField(validator:(value) {
                        //   if (value == "") {
                        //     return "PLease Fill Phone Number";
                        //   } else if (value!.length > 11) {
                        //     return "Phone NumberMust Be 10";
                        //   }
                        //   return "";
                        // } , name: 'Phone No.', onChanged: (String value) {
                        //
                        // },),
                        //  SizedBox(
                        //   height: 20,
                        // ),
                        CustomButton(
                            buttonName: "SignUp",
                            onPress: () {
                              validation();
                            }),

                        SizedBox(
                          height: 10,
                        ),
                        ChangeScreen(
                            name: "LogIn",
                            onTap: () {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (_) => Login()));
                            },
                            account: "I Already Have An Account!")
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
