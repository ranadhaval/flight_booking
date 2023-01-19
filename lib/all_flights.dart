import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';

class All_flights extends StatefulWidget {
  @override
  State<All_flights> createState() => _All_flightsState();
}

class _All_flightsState extends State<All_flights> {
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        title: Text(
          "     All Flights",
          style: TextStyle(
            fontSize: 24,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
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
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            h(
                "10:00 AM",
                "03:00 PM",
                HexColor("#86bfda"),
                HexColor("#66a7a5"),
                " 02:00 AM",
                " \$350",
                Colors.black,
                Colors.amber,
                "Assets/images/1st_.png"),
            h(
                "12:00 AM",
                "01:00 PM",
                HexColor("#86bfda"),
                HexColor("#66a7a5"),
                " 12:30 AM",
                " \$150",
                Colors.black,
                Colors.amber,
                "Assets/images/2nd_.png"),
            h(
                "05:00 AM",
                "09:00 AM",
                HexColor("#86bfda"),
                HexColor("#66a7a5"),
                " 04:00 AM",
                " \$140",
                Colors.black,
                Colors.amber,
                "Assets/images/3rd_.png"),
            h(
                "03:00 PM",
                "05:00 PM",
                HexColor("#86bfda"),
                HexColor("#66a7a5"),
                " 04:00 PM",
                " \$120",
                Colors.black,
                Colors.amber,
                "Assets/images/4th_.png"),
            h(
                "07:00 PM",
                "09:00 PM",
                HexColor("#86bfda"),
                HexColor("#66a7a5"),
                " 08:00 PM",
                " \$280",
                Colors.black,
                Colors.amber,
                "Assets/images/5th.png"),
          ],
        ),
      ),
      backgroundColor: HexColor("#f0f0f2"),
    );
  }

  Widget h(String T1, String t2, Color c, Color c1, String T1_q, String t2_q,
      Color c_q, Color c1_q, String image) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        // elevation: 1,
        color: HexColor("#ffffff"),
        child: Container(
          height: 150,
          width: MediaQuery.of(context).size.width - 40,
          decoration: BoxDecoration(
              color: HexColor("#f6f6f6"),
              borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10, right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 50,
                          width: 90,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    "$image",
                                  ),
                                  fit: BoxFit.cover)),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          colum("$T1", "$t2", c, c1, "Deprature", "Estimate")
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 1,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          colum(
                              "$T1_q", "$t2_q", c_q, c1_q, " Arrive", " Price")
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget colum(
      String T1, String t2, Color c, Color c1, String name1, String name2) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          " $name1",
          style: TextStyle(
              color: Colors.black38, fontSize: 13, fontWeight: FontWeight.bold),
        ),
        Text(
          "$T1",
          style: TextStyle(
              color: c,
              fontSize: 17,
              fontFamily: "S",
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          " $name2",
          style: TextStyle(
              color: Colors.black38, fontSize: 13, fontWeight: FontWeight.bold),
        ),
        Text(
          "$t2",
          style: TextStyle(
              fontFamily: "S",
              color: c1,
              fontSize: 17,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
