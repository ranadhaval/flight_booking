import 'package:flight_booking/Boarding%20pass.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lottie/lottie.dart';

Widget card_list(
  String Title,
  String from,
  String to,
  String fromT,
  String toT,
  String jsonName,
  String time,
  String name,
  String image,
  context,
) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (builder) => Boarding_pass(
                        image: '$image',
                        name: '$name',
                        From: '$from',
                        From_hidden: '$fromT',
                        Time: '$time',
                        Title: '$Title',
                        To: '$to',
                        To_Hidden: '$toT',
                        json: '$jsonName',
                      )));
        },
        child: Container(
          height: 120,
          width: MediaQuery.of(context).size.width - 40,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
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
                      " $Title",
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          " $from",
                          style: TextStyle(
                              color: HexColor("#eca86b"),
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          " $fromT",
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
                                Lottie.asset("$jsonName", fit: BoxFit.cover),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 32.0),
                            child: Text(
                              "$time",
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
                            "$to",
                            style: TextStyle(
                                color: HexColor("#385d63").withOpacity(0.7),
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            " $toT",
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
    ),
  );
}




  Widget y(Color c1, Color c2, Color c3, Color c4, String Text1, String Text2,
      String Text3, String Text4) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 30),
        child: Row(
          children: [
            Row(
              children: [
                bh("$Text1", c1),
                SizedBox(
                  width: 20,
                ),
                bh("$Text2", c2),
              ],
            ),
            SizedBox(
              width: 50,
            ),
            Row(
              children: [
                bh("$Text3", c3),
                SizedBox(
                  width: 20,
                ),
                bh("$Text4", c4),
              ],
            ),
          ],
        ),
      ),
    );
  }


    Widget bh(String text, Color c) {
    return Container(
      height: 60,
      width: 60,
      child: Center(
        child: Text(
          "$text",
          style: TextStyle(fontSize: 18),
        ),
      ),
      decoration:
          BoxDecoration(color: c, borderRadius: BorderRadius.circular(18)),
    );
  }

  Widget Ticket_button(context) {
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
            "Add Seat",
            style: TextStyle(
                fontFamily: "S",
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18),
          ))),
    );
  }



  Widget Ticket_but(context) {
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
            "Book Now",
            style: TextStyle(
                fontFamily: "S",
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16),
          ))),
    );
  }

  Widget Xontainer(String image,context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.all(7),
      child: Container(
        // padding: EdgeInsets.all(12),
        height: height * 0.17,
        width: width * 0.17,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "$image",
                ),
                fit: BoxFit.cover),
            color: HexColor("#ffffff"),
            borderRadius: BorderRadius.circular(15)),
      ),
    );
  }



  
  Widget jk(context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Center(
        child: Card(
          elevation: 5,
          color: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Container(
            height: MediaQuery.of(context).size.height / 2.8,
            width: MediaQuery.of(context).size.width - 40,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 40,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.black,
                            ),
                            child: Center(
                              child: Text(
                                "\$150",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    height: MediaQuery.of(context).size.height / 4.8,
                    width: MediaQuery.of(context).size.width - 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Flight Yogyukaya",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
