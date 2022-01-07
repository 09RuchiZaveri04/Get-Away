import 'package:final_project/Pages/CustomWidgets/Custom_button.dart';
import 'package:final_project/Pages/CustomWidgets/change_screen.dart';
import 'package:final_project/Pages/CustomWidgets/password_textform.dart';
import 'package:final_project/Pages/CustomWidgets/text_form_field.dart';
import 'package:final_project/Pages/HomePage/feedback.dart';
import 'package:final_project/Pages/HomePage/signup_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool obserText = true;
  String p =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
  //RegExp regExp = new RegExp(p);
  String email = "";
  String password = "";
  final _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();

  @override
  void initState() {
    Firebase.initializeApp();
    super.initState();
  }

  void validator() async {
    if (_formKey.currentState!.validate()) {
      print('yes');
      _formKey.currentState!.save();
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
      print("no");
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
            Form(
              key: _formKey,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 400,
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Login",
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 52,
                                fontFamily: 'Lobster',
                                color: Colors.black,
                                shadows: [
                                  Shadow(
                                      blurRadius: 5,
                                      color: Colors.pinkAccent,
                                      offset: Offset(2.0, 2.0))
                                ]),
                          ),
                          MyTextFormField(
                            name: "Email",
                            validator: (value) {
                              if (value == "") {
                                return "Please Fill Email";
                              } else if (!regExp.hasMatch(value!)) {
                                return "Email Is Invalide";
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
                              obserText: obserText,
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
                          CustomButton(
                            buttonName: "Login",
                            onPress: () {
                              validator();
                            },
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          ChangeScreen(
                              name: "SignUp",
                              onTap: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => SignUp()));
                              },
                              account: "I Don't Have An Account!")
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ]),
        ));
  }
}
