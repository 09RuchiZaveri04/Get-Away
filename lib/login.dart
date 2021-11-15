import 'package:final_project/signup.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
String p =
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
RegExp regExp = new RegExp(p);
bool obserText = true;

class _LoginState extends State<Login> {
  void validator() {
    final FormState? _form = _formKey.currentState;
    if (_form!.validate()) {
      print("yes");
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
            Form(
              key: _formKey,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 300,
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Login",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 50),
                          ),
                          TextFormField(
                            validator: (value) {
                              if (value == "") {
                                return "Please Fill Email";
                              } else if (!regExp.hasMatch(value!)) {
                                return "Email Is Invalide";
                              }
                              return "";
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "Email",
                                hintStyle: TextStyle(color: Colors.black)),
                          ),
                          TextFormField(
                            obscureText: obserText,
                            validator: (value) {
                              if (value == "") {
                                return "Please Fill Password";
                              } else if (value!.length < 8) {
                                return "Password Is Invalide";
                              }
                              return "";
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Password",
                              hintStyle: TextStyle(color: Colors.black),
                              suffixIcon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      obserText = !obserText;
                                    });
                                  },
                                  child: Icon(
                                      obserText == true
                                          ? Icons.visibility_off
                                          : Icons.visibility,
                                      color: Colors.black)),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              validator();
                            },
                            child: Text(
                              "LogIn",
                              style: TextStyle(fontSize: 25),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.blueGrey,
                                //padding: const EdgeInsets.all(25),
                                padding: const EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 40)),
                          ),
                          Row(children: [
                            Text("I Have Not Account"),
                            SizedBox(
                              width: 5,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: InkWell(
                                  child: Text("Login",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.blueAccent)),
                                  onTap: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => SignUp()));
                                  }),
                            )
                          ])
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
