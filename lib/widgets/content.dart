// contec1

import 'package:flight_booking/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../model/ticket_model.dart';

Widget contect1(context, List<ticket_model> display) {
  return Container(
    height: MediaQuery.of(context).size.height / 1.4,
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
        color: HexColor("#f6f6f6"),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30))),
    child: ListView.builder(
      itemBuilder: (context, index) {
        return card_list(
            display[index].Title_text,
            display[index].From_text,
            display[index].To_text,
            display[index].from_t,
            display[index].To_t,
            display[index].json,
            display[index].Time,
            display[index].Flight_name,
            display[index].image,
            context);
      },
      itemCount: display.length,
    ),
  );
}
