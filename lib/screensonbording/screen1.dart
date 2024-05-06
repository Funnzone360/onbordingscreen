import 'package:flutter/material.dart';

class ScreenOnePage extends StatefulWidget {
  const ScreenOnePage({super.key});

  @override
  State<ScreenOnePage> createState() => _ScreenOnePageState();
}

class _ScreenOnePageState extends State<ScreenOnePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/onbord1.png",
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
