import 'package:final_project/Pages/HomePage/HomeScreen.dart';
import 'package:flutter/material.dart';

class Offer extends StatelessWidget {
  final String adImg;
  //const Offer({Key? key}) : super(key: key);
  Offer({required this.adImg});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Offer",
            style: TextStyle(
                color: Colors.yellowAccent,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontSize: 24),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: 30,
              color: Colors.yellowAccent,
            ),
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (_) => HomeScreen()));
            },
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.share,
                  size: 25,
                  color: Colors.yellowAccent,
                ))
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  adImg,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "WHAT DO YOU GET?",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              "The customer will receive cashback as per the details mentioned in the table above."),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "HOW DO YOU GET IT?",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              "The offer is valid for bookings made on MakeMyTrip's website, Mobile site, Android & iOS App."
                              "The offer is valid on UPI payments done using ICICI Bank iMobile Pay for non ICICI Account holders with eligible VPA handle - <mobile number>.imb@icici only."
                              "The cashback amount will be calculated on the final paid amount using UPI."
                              "\nThe offer will remain valid from 00:00 hours to 23:59 hours from Jan 01, 2022 to Jan 31, 2022."
                              "The offer is valid once per user per (calendar) month during the offer period."),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "CONDITIONS IN CASE OF CANCELLATION:",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              "In the event of full/ partial cancellation of the booking,"
                              " the offer stands void and the customer will not be"
                              " eligible for cashback.\nIn the event of full/ partial cancellation,"
                              "the cashback will be deducted from the refund and"
                              " cancellation charges shall apply."),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "TERMS & CONDITIONS:",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              "ICICI Bank shall be responsible for resolving any/all "
                              "customer queries and escalations with respect to this offer\n"
                              "If a user doesn’t receive the cashback within 45 working "
                              "days, he/she should drop an email on customer.care@icicibank.com."
                              "ICICI Bank shall review the same & would post the cashback "
                              "if the customer is eligible as per offer terms.\n"
                              "MakeMyTrip/ICICI Bank reserve the right, at their sole"
                              "discretion, to disqualify any customer that tampers or "
                              "attempts to violate these terms and conditions.\n"
                              "MakeMyTrip reserves the right, at any time, without prior"
                              "notice and liability and without assigning any reason"
                              "whatsoever, to add/alter/modify/change or vary all of these"
                              "terms and conditions or to replace, wholly or in part, this"
                              "offer by another offer, whether similar to this offer or"
                              "not, or to extend or withdraw it altogether.\n"
                              "For any account related claims, the customer will need to "
                              "approach ICICI Bank. MakeMyTrip shall not entertain any such claims.\n"
                              "MakeMyTrip is the sole authority for the interpretation of"
                              "these terms MakeMyTrip and ICICI Bank shall not be liable"
                              "for any loss or damage arising due to force majeure event.\n"
                              "In the event of any misuse or abuse of the offer by the "
                              "customer or travel agent, MakeMyTrip and ICICI Bank reserves "
                              "the right to deny the offer or cancel the booking.\n"
                              "Customers who are travel agents by occupation are barred"
                              "from making bookings for their customers and MakeMyTrip"
                              "reserves the right to deny the offer against such bookings "
                              "or to cancel such bookings. For such cases, MakeMyTrip shall"
                              "not refund the booking amount.\nMakeMyTrip and ICICI Bank "
                              "does not make any commitment to make similar offers beyond "
                              "the Offer Period.\nAll other terms and conditions of the "
                              "Customer agreement with MakeMyTrip or ICICI Bank shall continue"
                              "to apply.\nUser Agreement and Privacy Policy of the MakeMyTrip "
                              "website will apply."),
                        ),
                      ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
