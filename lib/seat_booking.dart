import 'package:flight_booking/Booking.dart';
import 'package:flight_booking/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:dotted_line/dotted_line.dart';

class Seat extends StatefulWidget {
  const Seat({super.key});

  @override
  State<Seat> createState() => _SeatState();
}

class _SeatState extends State<Seat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#f6f6f6"),
      appBar: AppBar(
        // centerTitle: true,
        title: Text(
          "     Select Seat",
          style: TextStyle(
            fontSize: 24,
            color: Colors.black,
            fontWeight: FontWeight.w500,
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 40,
          ),
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.24,
              width: MediaQuery.of(context).size.width - 50,
              decoration: BoxDecoration(
                  color: HexColor("#ffffff"),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Canada Airlines",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Icon(Icons.menu)
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                "SFO",
                                style: TextStyle(
                                  color: HexColor("#409b94"),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.circle,
                            size: 11,
                            color: HexColor("#409b94"),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.16,
                            child: DottedLine(
                              dashColor: HexColor("#eca86b"),
                            ),
                          ),
                          Icon(
                            Icons.flight,
                            color: HexColor("#a6c9e0"),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.16,
                            child: DottedLine(
                              dashColor: HexColor("#eca86b"),
                            ),
                          ),
                          Icon(
                            Icons.circle,
                            size: 11,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "NYC",
                            style: TextStyle(
                              color: HexColor("#eca86b"),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 0.0, left: 8),
                      child: Row(
                        children: [
                          Text(
                            "10:00 AM",
                            style: TextStyle(
                                fontSize: 20,
                                color: HexColor("#acadaf").withOpacity(0.8)),
                          ),
                          SizedBox(
                            width: 100,
                          ),
                          Text(
                            "12:00 AM",
                            style: TextStyle(
                                fontSize: 20,
                                color: HexColor("#acadaf").withOpacity(0.8)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 0.0, left: 8, right: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 45,
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: HexColor("#409b94").withOpacity(0.9),
                            ),
                            child: Center(
                                child: Text(
                              "Business",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            )),
                          ),
                          Center(
                            child: Text(
                              "\$250",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Buisness Class",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          y(HexColor("#f0a867"), HexColor("#efeff0"), HexColor("#efeff0"),
              HexColor("#efeff0"), "A1", "A2", "A3", "A4"),
          y(HexColor("#efeff0"), HexColor("#efeff0"), HexColor("#f0a867"),
              HexColor("#efeff0"), "B1", "B2", "B3", "B4"),
          y(HexColor("#efeff0"), HexColor("#4c6460"), HexColor("#efeff0"),
              HexColor("#efeff0"), "C1", "C2", "C3", "C4"),

          // Center(child: column,)
          SizedBox(
            height: 40,
          ),
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => Booking()));
              },
              child: Ticket_button(context))
        ],
      ),
    );
  }
}
