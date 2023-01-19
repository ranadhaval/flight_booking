import 'package:flight_booking/Booking.dart';
import 'package:flight_booking/First_screen.dart';
import 'package:flight_booking/all_flights.dart';
import 'package:flight_booking/booking_flight_home_page.dart';
import 'package:flight_booking/checkout.dart';
import 'package:flight_booking/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lottie/lottie.dart';

class Home_ok extends StatefulWidget {
  const Home_ok({super.key});

  @override
  State<Home_ok> createState() => _Home_okState();
}

class _Home_okState extends State<Home_ok> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("Assets/images/image.jpg"),
                fit: BoxFit.cover)),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("Assets/images/image.jpg"),
                      fit: BoxFit.cover)),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          "Welcome to \nFlight Booking App",
                          style: TextStyle(
                              height: 1.4,
                              fontSize: 25,
                              fontWeight: FontWeight.lerp(
                                  FontWeight.w300, FontWeight.w700, 1.5),
                              color: Colors.white.withOpacity(0.8),
                              fontFamily: "S",
                              decoration: TextDecoration.none),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 30,
                          child: CircleAvatar(
                            radius: 28,
                            backgroundImage:
                                AssetImage("Assets/images/photo.jpg"),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 30,
                        width: MediaQuery.of(context).size.width * 0.4,
                        child:
                            Lottie.asset("Assets/kol.json", fit: BoxFit.cover),
                      ),
                    ],
                  ),
                ],
              ),
              // color: Colors.white,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: HexColor("#002123"),
                  image: DecorationImage(
                      image: AssetImage("Assets/images/image.jpg"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 55,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Select Options",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (builder) => Home1()));
                        },
                        child: j(
                            "Booking Flight",
                            HexColor("#002123").withOpacity(0.9),
                            Colors.white,
                            Icons.book_online),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (builder) => Search()));
                        },
                        child: j(
                            "Search Flights",
                            HexColor("#002123").withOpacity(0.9),
                            Colors.white,
                            Icons.search_sharp),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (builder) => All_flights()));
                        },
                        child: j(
                            "All Flights",
                            HexColor("#002123").withOpacity(0.9),
                            Colors.white,
                            Icons.all_inbox),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (builder) => Check_out()));
                        },
                        child: j(
                            "CheckOut",
                            HexColor("#002123").withOpacity(0.9),
                            Colors.white,
                            Icons.library_add_check_outlined),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget j(String name, Color c, Color c1, IconData icons) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(15), color: c),
        margin: EdgeInsets.all(8),
        height: 150,
        width: MediaQuery.of(context).size.width / 2.9,
        child: Expanded(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icons,
                  color: Colors.white,
                  size: 28,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "$name",
                  style: TextStyle(
                      fontFamily: "S",
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                      fontSize: 16,
                      color: c1),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
