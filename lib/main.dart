import 'package:flight_booking/First_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarBrightness: Brightness.light,
      statusBarColor: Colors.transparent));
  runApp(const m());
}

class m extends StatefulWidget {
  const m({super.key});

  @override
  State<m> createState() => _mState();
}

class _mState extends State<m> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(fontFamily: 'S'),
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
  }
}
