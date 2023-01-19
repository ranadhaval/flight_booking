
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lottie/lottie.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'search.dart';

class Booking extends StatefulWidget {
  const Booking({super.key});

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
   
        color: HexColor("#002123"),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Text(
                          "Booking Your \nFlight",
                          style: TextStyle(
                              height: 1.4,
                              fontSize: 30,
                              fontWeight: FontWeight.lerp(
                                  FontWeight.w300, FontWeight.w500, 1.5),
                              color: Colors.white.withOpacity(0.8),
                              fontFamily: "S",
                              decoration: TextDecoration.none),
                        ),
                      ),
                      Expanded(
                          child: Container(
                        height: 120,
                        width: 40,
                        child: Lottie.asset("Assets/final.json", animate: true),
                      )),
                     
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Container(
                      child: Row(
                        children: [
                          Text(
                            "One Way",
                            style: TextStyle(
                                height: 1.4,
                                fontSize: 17,
                                fontWeight: FontWeight.lerp(
                                    FontWeight.w300, FontWeight.w500, 1.5),
                                color: Colors.white.withOpacity(0.8),
                                fontFamily: "S",
                                decoration: TextDecoration.none),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Round Trip",
                                style: TextStyle(
                                    height: 1.5,
                                    fontSize: 17,
                                    fontWeight: FontWeight.lerp(
                                        FontWeight.w300, FontWeight.w500, 1.5),
                                    color: Colors.white.withOpacity(0.8),
                                    fontFamily: "S",
                                    decoration: TextDecoration.none),
                              ),
                              Container(
                                height: 2,
                                color: Colors.amber.withOpacity(0.9),
                                width: 50,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("Assets/images/image.jpg"))),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 1.4,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: HexColor("#f6f6f6"),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Container(
                      height: 120,
                      width: MediaQuery.of(context).size.width - 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0, top: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  " Vacation in Maldives",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 0,
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      " CHLD",
                                      style: TextStyle(
                                          color: HexColor("#eca86b"),
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Cerritos",
                                      style: TextStyle(
                                          color: Colors.black38,
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                 
                                      Container(
                                        height: 55,
                                        width: 90,
                                  
                                        child: Lottie.asset("Assets/hj.json",
                                            fit: BoxFit.cover),
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 32.0),
                                        child: Text(
                                          "1h 30m",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Text(
                                        "DNY",
                                        style: TextStyle(
                                            color: HexColor("#385d63")
                                                .withOpacity(0.7),
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        " Downey",
                                        style: TextStyle(
                                            color: Colors.black38,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),
                                      ),
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
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 28.0, top: 10, bottom: 10, right: 28),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 
                      children: [
                        Text(
                          "Departure",
                          style: TextStyle(
                              color: Colors.black45,
                              decoration: TextDecoration.none,
                              fontFamily: "S",
                              fontSize: 24),
                        ),
                        SizedBox(
                          width: 0,
                        ),
                        Text("Adults",
                            style: TextStyle(
                                color: Colors.black45,
                                fontFamily: "S",
                                decoration: TextDecoration.none,
                                fontSize: 24)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 28.0, top: 10, bottom: 10, right: 28),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          width: MediaQuery.of(context).size.width / 2.5,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Center(
                                    child: Icon(
                                      Icons.calendar_today,
                                      color: HexColor("#eca86b"),
                                      // size: ,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  Text(
                                    " 21 May, 2022",
                                    style: TextStyle(
                                        color: Colors.black45,
                                        decoration: TextDecoration.none,
                                        fontFamily: "S",
                                        fontSize: 14),
                                  ),
                                ]),
                          ),
                        ),
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          width: MediaQuery.of(context).size.width / 2.5,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 30,
                                    width: 30,
                                    child: Column(
                                   
                                      children: [
                                        Icon(
                                          Icons.minimize,
                                          size: 19,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                        color: HexColor("#eca86b"),
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Icon(
                                    Icons.emoji_people_outlined,
                                    size: 35,
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Container(
                                    height: 30,
                                    width: 30,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Center(
                                          child: Icon(
                                            Icons.add,
                                            size: 22,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                        color: HexColor("#002123")
                                            .withOpacity(0.9),
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                  ),
                                ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 28.0, top: 10, bottom: 10, right: 28),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.s,
                      children: [
                        Text(
                          "Children",
                          style: TextStyle(
                              color: Colors.black45,
                              decoration: TextDecoration.none,
                              fontFamily: "S",
                              fontSize: 24),
                        ),
                        SizedBox(
                          width: 0,
                        ),
                        Text("Infants",
                            style: TextStyle(
                                color: Colors.black45,
                                fontFamily: "S",
                                decoration: TextDecoration.none,
                                fontSize: 24)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2, left: 28, right: 28),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.s,
                      children: [
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          width: MediaQuery.of(context).size.width / 2.5,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 30,
                                    width: 30,
                                    child: Column(
                                      // mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.minimize,
                                          size: 19,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                        color: HexColor("#eca86b"),
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  // Icon(Icons.man),
                                  Icon(
                                    MdiIcons.humanMaleFemale,
                                    // size: 35,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Container(
                                    height: 30,
                                    width: 30,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Center(
                                          child: Icon(
                                            Icons.add,
                                            size: 22,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                        color: HexColor("#002123")
                                            .withOpacity(0.9),
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                  ),
                                ]),
                          ),
                        ),
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          width: MediaQuery.of(context).size.width / 2.5,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 30,
                                    width: 30,
                                    child: Column(
                                      // mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.minimize,
                                          size: 19,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                        color: HexColor("#eca86b"),
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Icon(
                                    MdiIcons.humanChild,
                                    size: 35,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Container(
                                    height: 30,
                                    width: 30,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Center(
                                          child: Icon(
                                            Icons.add,
                                            size: 22,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                        color: HexColor("#002123")
                                            .withOpacity(0.9),
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                  ),
                                ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 28.0, top: 10, bottom: 10),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.s,
                      children: [
                        Text(
                          "Cabin",
                          style: TextStyle(
                              color: Colors.black87,
                              decoration: TextDecoration.none,
                              fontFamily: "S",
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        SizedBox(
                          width: 0,
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        j("Economy", HexColor("#002123").withOpacity(0.9),
                            Colors.white),
                        SizedBox(
                          width: 10,
                        ),
                        j("Business", Colors.white, Colors.black),
                        SizedBox(
                          width: 10,
                        ),
                        j("Private", Colors.white, Colors.black),
                        SizedBox(
                          width: 10,
                        ),
                        j("Normal", Colors.white, Colors.black)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Card(
                      elevation: 50,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      shadowColor: Colors.white,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (builder) => Search()));
                        },
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width / 1.2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: HexColor("#409b94"),
                          ),
                          child: Center(
                              child: Text(
                            "Search Flight",
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget j(String name, Color c, Color c1) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80)),
      child: Container(
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(20), color: c),
        margin: EdgeInsets.all(8),
        height: 40,
        width: 120,
        child: Expanded(
          child: Center(
            child: Text(
              "$name",
              style: TextStyle(
                  fontFamily: "S",
                  decoration: TextDecoration.none,
                  fontSize: 16,
                  color: c1),
            ),
          ),
        ),
      ),
    );
  }
}
