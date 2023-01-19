import 'package:flight_booking/Boarding%20pass.dart';
import 'package:flight_booking/model/ticket_model.dart';
import 'package:flight_booking/widgets/content.dart';
import 'package:flight_booking/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lottie/lottie.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  static List<ticket_model> ticket = [
    ticket_model(
        "CHLD",
        "Vacation in Maldives",
        "Downey",
        "DNY",
        "Cerritos",
        "Assets/hj.json",
        "1h 30m",
        "Alaska Airline Flight MLi-18",
        "Assets/images/flight_1.png"),
    ticket_model(
        "USA",
        "Business Trip To Canada",
        "Canda",
        "CND",
        "Solatied",
        "Assets/1.json",
        "5h 40m",
        "Canda Allegiant Air UTr-89",
        "Assets/images/f_1.png"),
    ticket_model(
        "IND",
        "Tour In Australia",
        "Australia",
        "AUS",
        "Arcendina",
        "Assets/hj.json",
        "2h 30m",
        "India Indigo Airline POi-45F",
        "Assets/images/flight_3.png"),
    ticket_model(
        "GUJ",
        "Tour In Goa",
        "Goa",
        "GOA",
        "Setisland",
        "Assets/2.json",
        "3h 30m",
        "Jetblue Airline Flight KLm-91",
        "Assets/images/flight_4.png"),
  ];
  List<ticket_model> display = List.from(ticket);

  void update_list(String value) {
    setState(() {
      display = ticket
          .where((element) =>
              element.To_t.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.transparent,
        onPressed: () {
          Navigator.pop(context);
        },
        elevation: 0,
        child: Icon(
          Icons.arrow_back,
          size: 30,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      body: Container(
        color: HexColor("#002123"),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.all(3),
                height: MediaQuery.of(context).size.height / 4,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("Assets/images/image.jpg"))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    search_bar()
                  ],
                ),
              ),
              contect1(context, display)
            ],
          ),
        ),
      ),
    );
  }

  Widget search_bar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width - 60,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: HexColor("#409b94").withOpacity(0.9),
          ),
          child: Material(
            borderRadius: BorderRadius.circular(20),
            color: Colors.transparent,
            child: TextFormField(
              onChanged: (value) => update_list(value),
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 1.3,
                  fontFamily: "S"),
              decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Icon(
                      Icons.search,
                      size: 40,
                      color: Colors.white70,
                    ),
                  ),
                  hintText: "    Search Flights",
                  hintStyle: TextStyle(
                      fontFamily: "S",
                      color: Colors.white60,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(17),
                      borderSide: BorderSide(color: Colors.amber, width: 2)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(17),
                      borderSide: BorderSide(color: Colors.black26, width: 2))),
            ),
          ),
        )
      ],
    );
  }
}
