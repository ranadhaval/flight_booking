import 'package:flight_booking/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';

class Check_out extends StatefulWidget {
  const Check_out({super.key});

  @override
  State<Check_out> createState() => _All_flightsState();
}

class _All_flightsState extends State<Check_out> {
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 30,
          ),
        ),
        backgroundColor: HexColor("#fafafc"),
        centerTitle: true,
        title: Text(
          "Checkout",
          style: TextStyle(
              fontSize: 27, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      backgroundColor: HexColor("#f0f0f2"),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              height: height * 0.1,
              width: width - 42,
              decoration: BoxDecoration(
                  color: HexColor("#fafafc"),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Xontainer("Assets/images/visa.png", context)),
                  Xontainer("Assets/images/master_card.png", context),
                  Xontainer("Assets/images/paypal.png", context),
                  Xontainer("Assets/images/google_pay.png", context)
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            jk(context),
            SizedBox(
              height: 40,
            ),
            Ticket_button(context),
          ],
        ),
      ),
    );
  }
}
