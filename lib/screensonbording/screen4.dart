import 'package:flutter/material.dart';

class ScreenFourPage extends StatefulWidget {
  const ScreenFourPage({super.key});

  @override
  State<ScreenFourPage> createState() => _ScreenFourPageState();
}

class _ScreenFourPageState extends State<ScreenFourPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/onbord4.jpg",
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
