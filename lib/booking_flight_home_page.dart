import 'dart:ui';
import 'package:flight_booking/Booking.dart';
import 'package:flight_booking/seat_booking.dart';
// import 'package:flight_booking/drwar.dart';
import 'package:flight_booking/utilities/ThemeColor.dart';
import 'package:flight_booking/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lottie/lottie.dart';
import 'package:ionicons/ionicons.dart';

class Home1 extends StatefulWidget {
  const Home1({super.key});

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> with TickerProviderStateMixin {
  late TabController tab_controller = TabController(length: 3, vsync: this);

  final item = ['Highest Price', "1000", "2000", "3000", "5000"];
  String? value = 'Highest Price';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.transparent,
          elevation: 0,
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
        backgroundColor: HexColor("#f6f6f6"),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("Assets/images/image.jpg"),
                            fit: BoxFit.cover)),
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 200,
                          child: Center(
                            child: Lottie.asset(
                              "Assets/s.json",
                              animate: true,
                              // repeat: false,
                              reverse: false,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 120),
                    child: Column(
                      children: [
                        Center(
                          child: Card(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.6),
                                  borderRadius: BorderRadius.circular(20)),
                              height: 290,
                              width: MediaQuery.of(context).size.width - 40,
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: HexColor("#f6f6f6"),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    height: 70,
                                    width:
                                        MediaQuery.of(context).size.width - 40,
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(9.0),
                                          child: TabBar(
                                              controller: tab_controller,
                                              indicator: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                color: HexColor("#3d8d8a"),
                                              ),
                                              tabs: [
                                                Tab(
                                                  child: Text(
                                                    "On way",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black),
                                                  ),
                                                ),
                                                Tab(
                                                  child: Text(
                                                    "Round Trip",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black),
                                                  ),
                                                ),
                                                Tab(
                                                  child: Text(
                                                    "Multi- City",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black),
                                                  ),
                                                ),
                                              ]),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Stack(
                                    children: [
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(9.0),
                                            child: Container(
                                              child: TextFormField(
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: "S"),
                                                decoration: InputDecoration(
                                                    prefixIcon: Column(
                                                      children: [
                                                        Icon(
                                                          Ionicons.airplane,
                                                          color: HexColor(
                                                              "#d89d6a"),
                                                          size: 25,
                                                        ),
                                                        Text(
                                                          "|",
                                                          style: TextStyle(
                                                              color: HexColor(
                                                                  "#eba86b"),
                                                              fontSize: 20,
                                                              wordSpacing: 0,
                                                              letterSpacing: 0),
                                                        )
                                                      ],
                                                    ),
                                                    labelText: ("From"),
                                                    labelStyle: TextStyle(
                                                        color: Colors.black38,
                                                        fontWeight: FontWeight
                                                            .bold,
                                                        fontSize: 15),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        17),
                                                            borderSide:
                                                                BorderSide(
                                                                    color: Colors
                                                                        .amber,
                                                                    width: 2)),
                                                    enabledBorder: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(17),
                                                        borderSide: BorderSide(
                                                            color:
                                                                Colors.black26,
                                                            width: 2))),
                                              ),
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Card(
                                                elevation: 8,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30)),
                                                child: CircleAvatar(
                                                  backgroundColor:
                                                      HexColor("#eba86b"),
                                                  radius: 23,
                                                  child: Icon(
                                                    Icons.swap_vert_sharp,
                                                    color: Colors.white,
                                                    size: 28,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(9.0),
                                            child: Container(
                                              child: TextFormField(
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: "S"),
                                                decoration: InputDecoration(
                                                    prefixIcon: Column(
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .airplanemode_inactive,
                                                          size: 25,
                                                          color: Colors.blue
                                                              .withOpacity(0.8),
                                                        ),
                                                        Text(
                                                          "|",
                                                          style: TextStyle(
                                                              color: Colors.blue
                                                                  .withOpacity(
                                                                      0.8),
                                                              fontSize: 20,
                                                              wordSpacing: 0,
                                                              letterSpacing: 0),
                                                        )
                                                      ],
                                                    ),
                                                    labelText: "To ",
                                                    labelStyle: TextStyle(
                                                        fontFamily: "S",
                                                        color: Colors.black38,
                                                        fontWeight: FontWeight
                                                            .bold,
                                                        fontSize: 15),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        17),
                                                            borderSide:
                                                                BorderSide(
                                                                    color: Colors
                                                                        .amber,
                                                                    width: 2)),
                                                    enabledBorder: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(17),
                                                        borderSide: BorderSide(
                                                            color:
                                                                Colors.black26,
                                                            width: 2))),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 0.0, left: 7, right: 7),
                          child: Row(
                            children: [
                              Text(
                                "Sorted By",
                                style: TextStyle(
                                    color: Colors.black38, fontSize: 18),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 2.5,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                ),
                                margin: EdgeInsets.all(18),
                                padding: EdgeInsets.all(0),
                                child: DropdownButton<String>(
                                  underline: Container(
                                    height: 2,
                                    color: Colors.transparent,
                                  ),
                                  isExpanded: true,
                                  value: value,
                                  items: item.map((buildMenuItem)).toList(),
                                  onChanged: (valu) {
                                    setState(() {
                                      this.value = valu;
                                    });
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: Center(
                            child: Card(
                              elevation: 5,
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height / 2.8,
                                width: MediaQuery.of(context).size.width - 40,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Container(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Container(
                                                height: 40,
                                                width: 80,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  color: Colors.black,
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "\$150",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        height:
                                            MediaQuery.of(context).size.height /
                                                4.8,
                                        width:
                                            MediaQuery.of(context).size.width -
                                                80,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                  "https://akm-img-a-in.tosshub.com/indiatoday/images/story/202201/air_india_reuters.joeg_1200x768.jpeg?size=1200:675",
                                                ),
                                                fit: BoxFit.cover)),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Flight Yogyukaya",
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "HJB-JKM",
                                            style: TextStyle(
                                                color: Colors.black38,
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.timer,
                                                color: Colors.greenAccent,
                                              ),
                                              Text(
                                                "10.00 AM - 12:00 PM",
                                                style: TextStyle(
                                                    color: Colors.black38,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                          InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (builder) =>
                                                          Seat()));
                                            },
                                            child: Text(
                                              "Book Now ⫸",
                                              style: TextStyle(
                                                  color: Colors.amber,
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }

  DropdownMenuItem<String> buildMenuItem(String item) {
    return DropdownMenuItem(
      value: item,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Text(
            item,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          ),
        ),
      ),
    );
  }
}
