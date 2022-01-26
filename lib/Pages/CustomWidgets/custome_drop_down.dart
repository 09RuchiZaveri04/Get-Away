import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  const DropDown({Key? key}) : super(key: key);

  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String dropdownvalue = 'Ahmedabad';

  var items = [
    'Ahmedabad',
    'Bengaluru',
    'Chennai',
    'Delhi',
    'Vadodara',
    'Pune',
    'Patna',
    'Nagpur',
    'Mumbai'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DropdownButton(
        value: dropdownvalue,
        icon: Icon(Icons.keyboard_arrow_down),
        items: items.map((String items) {
          return DropdownMenuItem(value: items, child: Text(items));
        }).toList(),
        onChanged: (newValue) {
          setState(() {
            dropdownvalue = newValue.toString();
          });
        },
      ),
    );
  }
}
