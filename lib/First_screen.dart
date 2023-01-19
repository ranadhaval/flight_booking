import 'package:flight_booking/Option_screen.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lottie/lottie.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            color: HexColor("#294143"),
            image: DecorationImage(
                image: AssetImage(
                  "Assets/images/456.jpg",
                ),
                fit: BoxFit.cover)),
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: HexColor("#294143"),
            toolbarHeight: 240,
            title: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  " Find And Book\n A Great Experience",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 14,
                ),
                Text(
                  "  Going forward after a pandemic that \n  devastated the online industry",
                  style: TextStyle(color: Colors.white24, fontSize: 15),
                ),
                SizedBox(
                  height: 13,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        child: InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (builder) => Home_ok()));
                          },
                          child: Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width / 2.2,
                            decoration: BoxDecoration(
                                color: HexColor("#eca86b"),
                                borderRadius: BorderRadius.circular(15)),
                            child: Center(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Get Tickets",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'S',
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          backgroundColor: Colors.transparent,
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "Assets/images/456.jpg",
                    ),
                    fit: BoxFit.cover)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 120,
                      width: 136,
                      child: Center(
                        child: Lottie.asset(
                          "Assets/d.json",
                          animate: true,
                        ),
                      ),
                    ),
                    Container(
                        height: 25,
                        width: 20,
                        child:
                            Image(image: AssetImage("Assets/images/fff.png")))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
