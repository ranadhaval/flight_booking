// import 'dart:html';
import 'dart:ffi';
import 'dart:ui';
import 'package:flight_booking/Option_screen.dart';
import 'package:flight_booking/Booking.dart';
import 'package:flight_booking/utilities/ThemeColor.dart';
import 'package:flight_booking/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lottie/lottie.dart';
import 'package:ionicons/ionicons.dart';
import 'package:dotted_line/dotted_line.dart';

class Boarding_pass extends StatefulWidget {
  // const Boarding_pass({super.key});
  String name;
  String image;
  String From, From_hidden;
  String To, To_Hidden;
  String Time, json, Title;

  Boarding_pass(
      {required this.image,
      required this.name,
      required this.From,
      required this.From_hidden,
      required this.To,
      required this.To_Hidden,
      required this.Time,
      required this.Title,
      required this.json});
  @override
  State<Boarding_pass> createState() => _Home1State();
}

class _Home1State extends State<Boarding_pass> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    height: 240,
                    width: MediaQuery.of(context).size.width,
                    // color: Colors.amber,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        ListTile(
                          leading: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.arrow_back_rounded,
                              size: 28,
                              color: Colors.white,
                            ),
                          ),
                          trailing: CircleAvatar(
                            backgroundColor: Colors.brown,
                            backgroundImage:
                                AssetImage("Assets/images/photo.jpg"),
                          ),
                        ),
                        Text(
                          "Boarding Pass",
                          style: TextStyle(
                              fontSize: 27,
                              fontWeight: FontWeight.bold,
                              color: Colors.white.withOpacity(0.8)),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 140),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Center(
                          child: Card(
                            elevation: 0,
                            color: Colors.transparent,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(20)),
                              height: 800,
                              width: MediaQuery.of(context).size.width - 40,
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        // border: Border.fromBorderSide(side),
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.circular(20),
                                            bottomLeft: Radius.circular(30),
                                            bottomRight: Radius.circular(30))),
                                    height: 160,
                                    width:
                                        MediaQuery.of(context).size.width - 40,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 100,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              80,
                                          decoration: BoxDecoration(
                                              // color: Colors.amber,
                                              image: DecorationImage(
                                            image:
                                                AssetImage("${widget.image}"),
                                            fit: BoxFit.cover,
                                          )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text("${widget.name}",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold))
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width - 65,
                                    child: DottedLine(
                                      dashColor:
                                          Colors.black87.withOpacity(0.5),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(30),
                                            topRight: Radius.circular(30),
                                            bottomLeft: Radius.circular(20),
                                            bottomRight: Radius.circular(20))),
                                    height: 300,
                                    width:
                                        MediaQuery.of(context).size.width - 40,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        h(),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Container(
                                                height: 100,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    2.8,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                    border: Border.all(
                                                        color: HexColor(
                                                            "#409b94"))),
                                                child: Column(
                                                  children: [
                                                    box(
                                                        Icons.calendar_month,
                                                        "Time",
                                                        "10:00 - 12:00",
                                                        HexColor("#eca86b"))
                                                  ],
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Container(
                                                //  color: HexColor("#385d63").withOpacity(0.7),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                    border: Border.all(
                                                        color: Colors.black26
                                                        // color: HexColor("#385d63").withOpacity(0.7),

                                                        )),
                                                height: 100,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    2.8,
                                                child: Column(
                                                  children: [
                                                    box(
                                                        Icons.pending,
                                                        "Date",
                                                        "June 30, 2022",
                                                        HexColor("#409b94"))
                                                  ],
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              height: 20,
                                            ),
                                            details("Gate", "C2"),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            details("Seat", "A1"),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            details("Flight No.", "2CVD"),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            details("Class ", "Business"),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width - 65,
                                    child: DottedLine(
                                      dashColor:
                                          Colors.black87.withOpacity(0.5),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.circular(20),
                                            bottomLeft: Radius.circular(25),
                                            bottomRight: Radius.circular(25))),
                                    height: 110,
                                    width:
                                        MediaQuery.of(context).size.width - 40,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            barcode(8),
                                            barcode(20),
                                            barcode(6),
                                            barcode(15),
                                            barcode(6),
                                            barcode(6),
                                            barcode(6),
                                            barcode(6),
                                            barcode(6),
                                            barcode(13),
                                            barcode(6),
                                            barcode(20),
                                            barcode(6),
                                            barcode(6),
                                            barcode(6),
                                            barcode(15),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Text(
                                          "OPBAVTUIOPQZ",
                                          style: TextStyle(letterSpacing: 4),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  InkWell(
                                      onTap: () {
                                        Navigator.pushAndRemoveUntil(
                                            context,
                                            MaterialPageRoute(
                                                builder: (builder) =>
                                                    Home_ok()),
                                            (route) => false);
                                      },
                                      child: Ticket_button())
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }

  Widget Ticket_button() {
    return Container(
      width: MediaQuery.of(context).size.width - 60,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: HexColor("#409b94").withOpacity(0.9),
      ),
      child: Material(
          borderRadius: BorderRadius.circular(12),
          color: Colors.transparent,
          child: Center(
              child: Text(
            "Download Ticket",
            style: TextStyle(
                fontFamily: "S",
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16),
          ))),
    );
  }

  Widget barcode(double width) {
    return Container(
      margin: EdgeInsets.all(2.5),
      height: 65,
      width: width,
      color: Colors.black,
    );
  }

  Widget details(String text, String Text2) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "$text",
                style: TextStyle(
                    color: Colors.black38, fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 2,
          ),
          Row(
            children: [
              Text(
                "$Text2",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget box(IconData i, String time_date, String Time, Color c) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(11.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Icon(
                    i,
                    size: 20,
                    color: c,
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    " $time_date",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black38),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    " $Time",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w800,
                        color: Colors.black),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }

  Widget h() {
    return Container(
      height: 105,
      width: MediaQuery.of(context).size.width - 40,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0, top: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      " ${widget.From}",
                      style: TextStyle(
                          color: HexColor("#eca86b"),
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      " ${widget.From_hidden}",
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // SizedBox(
                      //   height: 10,
                      // ),
                      Container(
                        height: 55,
                        width: 90,
                        // color: Colors.black,
                        child:
                            Lottie.asset("${widget.json}", fit: BoxFit.cover),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 32.0),
                        child: Text(
                          "${widget.Time}",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
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
                        "${widget.To}",
                        style: TextStyle(
                            color: HexColor("#385d63").withOpacity(0.7),
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        " ${widget.To_Hidden}",
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
    );
  }
}
