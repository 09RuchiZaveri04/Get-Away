import 'package:country_picker/country_picker.dart';
import 'package:final_project/Pages/CustomWidgets/text_form_field.dart';
import 'package:final_project/Pages/HomePage/HomeScreen.dart';
import 'package:final_project/Pages/HomePage/feedback.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

enum SingingCharacter { male, female, single, couple }

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  String email = "";
  //String p =
  //  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
  //RegExp regExp = new RegExp(p);
  static const pattern = r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$';
  final regExpt = RegExp(pattern);

  String? _dateTime;
  String? dateTime;
  SingingCharacter? _character = SingingCharacter.male;
  SingingCharacter? charact = SingingCharacter.single;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
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
            child: Column(children: [
              Padding(
                padding: EdgeInsets.only(right: 15),
                child: Container(
                  height: 60,
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => HomeScreen()));
                          },
                          icon: Icon(Icons.arrow_back)),
                      Text(
                        "Edit Profile",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Save",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                color: Colors.black38,
                thickness: 2,
              ),
              Center(
                child: Column(children: [
                  Container(
                    width: 70,
                    height: 70,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.account_circle,
                          size: 60,
                        )),
                  ),
                  Text(
                    "Edit",
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  )
                ]),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 12)),
                  Text(
                    "GENERAL DETAILS",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.all(12),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Full Name"),
                    hintText: 'Full Name',
                    hintStyle: TextStyle(color: Colors.black26),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text(
                        'DATE OF BIRTH:',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black45),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: GestureDetector(
                        onTap: () async {
                          showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(1930),
                                  lastDate: DateTime(2023))
                              .then((date) {
                            setState(() {
                              dateTime =
                                  new DateFormat("yyyy-MM-dd").format(date!);
                            });
                          });
                        },
                        child: AbsorbPointer(
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              label: Text(dateTime == null
                                  ? 'DATE OF BIRTH'
                                  : dateTime.toString()),
                              // hintText: 'DATE OF BIRTH',
                              // hintStyle: TextStyle(color: Colors.black26),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Text(
                          'GENDER:',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black45),
                        )),
                    Expanded(
                      flex: 2,
                      child: ListTile(
                        title: const Text(
                          'Male',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        leading: Radio<SingingCharacter>(
                          value: SingingCharacter.male,
                          groupValue: _character,
                          onChanged: (SingingCharacter? value) {
                            setState(() {
                              _character = value;
                            });
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: ListTile(
                        title: const Text(
                          'Female',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        leading: Radio<SingingCharacter>(
                          value: SingingCharacter.female,
                          groupValue: _character,
                          onChanged: (SingingCharacter? value) {
                            setState(() {
                              _character = value;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Text(
                          'MARTIAL STATUS:',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black45),
                        )),
                    Expanded(
                      flex: 2,
                      child: ListTile(
                        title: const Text(
                          'SINGLE',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                        leading: Radio<SingingCharacter>(
                          value: SingingCharacter.single,
                          groupValue: charact,
                          onChanged: (SingingCharacter? value) {
                            setState(() {
                              charact = value;
                            });
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: ListTile(
                        title: const Text(
                          'COUPLE',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                        leading: Radio<SingingCharacter>(
                          value: SingingCharacter.couple,
                          groupValue: charact,
                          onChanged: (SingingCharacter? value) {
                            setState(() {
                              charact = value;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    "CONTACT DETAILS",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                        fontSize: 16),
                  ),
                ),
              ]),
              Padding(
                padding: EdgeInsets.all(10),
                //   child: TextField(
                //     decoration: InputDecoration(
                //       border: OutlineInputBorder(),
                //       label: Text("EMAIL"),
                //       hintText: 'abc@gamil.com',
                //       hintStyle: TextStyle(color: Colors.black26),
                //     ),
                //   ),
                child: MyTextFormField(
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
              ),
              Padding(
                padding: EdgeInsets.all(10),
                // child: TextField(
                //   decoration: InputDecoration(
                //     border: OutlineInputBorder(),
                //     label: Text("CONTACT NO."),
                //     hintText: 'CONTACT NO.',
                //     hintStyle: TextStyle(color: Colors.black26),
                //   ),
                // ),
                child: MyTextFormField(
                  validator: (value) {
                    if (value == "") {
                      return "Please Fill Contact No.";
                    } else if (!regExpt.hasMatch(value!)) {
                      return "Contact No. Is Invalid";
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
                  name: 'Contact No.',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    "TRAVEL DETAILS",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                        fontSize: 16),
                  ),
                ),
              ]),
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text("PASSPORT NO."),
                          hintText: 'PASSPORT NO.',
                          hintStyle: TextStyle(color: Colors.black26),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      flex: 1,
                      child: GestureDetector(
                        onTap: () {
                          showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2020),
                                  lastDate: DateTime(2023))
                              .then((date) {
                            setState(() {
                              _dateTime =
                                  new DateFormat("yyyy-MM-dd").format(date!);
                            });
                          });
                        },
                        child: AbsorbPointer(
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              label: Text(_dateTime == null
                                  ? 'EXPIRY'
                                  : _dateTime.toString()),
                              hintText: 'DD/MM/YYYY',
                              hintStyle: TextStyle(color: Colors.black26),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.all(1),
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.all(1),
                          child: SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                showCountryPicker(
                                  context: context,
                                  showPhoneCode:
                                      true, // optional. Shows phone code before the country name.
                                  onSelect: (Country country) {
                                    print(
                                        'Select country: ${country.displayName}');
                                  },
                                );
                              },
                              child: Text(
                                'NATIONALITY',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black54),
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.transparent,
                                  //padding: const EdgeInsets.all(25),
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 18, horizontal: 50)),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.all(1),
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.all(1),
                          child: SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                showCountryPicker(
                                  context: context,
                                  showPhoneCode:
                                      true, // optional. Shows phone code before the country name.
                                  onSelect: (Country country) {
                                    print(
                                        'Select country: ${country.displayName}');
                                  },
                                );
                              },
                              child: Text(
                                'ISSUING COUNTRY',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black54),
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.transparent,
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 18, horizontal: 40)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}
