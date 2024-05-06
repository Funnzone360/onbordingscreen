import 'package:flutter/material.dart';

class ScreenThreePage extends StatefulWidget {
  const ScreenThreePage({super.key});

  @override
  State<ScreenThreePage> createState() => _ScreenThreePageState();
}

class _ScreenThreePageState extends State<ScreenThreePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/onbord3.jpg",
          width: 250,
          height: 250,
        ),
        Text(
          "WE ARE WORKING HARD ",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 22),
          child: Center(
            child: Text(
              "WE ARE WORKING HARD WE ARE WORKING HARD WE ARE WORKING HARD WE ARE WORKING HARD HARD WE ARE WORKING HARD HARD WE ARE WORKING HARD",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
