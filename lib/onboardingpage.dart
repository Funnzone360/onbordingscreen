import 'package:flutter/material.dart';
import 'package:onboardingscreen/homrpage.dart';
import 'package:onboardingscreen/screensonbording/screen1.dart';
import 'package:onboardingscreen/screensonbording/screen2.dart';
import 'package:onboardingscreen/screensonbording/screen3.dart';
import 'package:onboardingscreen/screensonbording/screen4.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingPage extends StatefulWidget {
  OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  PageController pageController = PageController();
  String buttontext = "Skip";
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("On Boarding Screen"),
      ),
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
                buttontext = index == 3 ? "Finish" : "Skip";
              });
            },
            children: [
              ScreenOnePage(),
              ScreenTwoPage(),
              ScreenThreePage(),
              ScreenFourPage(),
            ],
          ),
          Positioned(
            bottom: 20.0,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    if (currentIndex < 3) {
                      pageController.nextPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.ease,
                      );
                    } else {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return MyHomePage();
                      }));
                    }
                  },
                  child: Text(
                    buttontext,
                    style: TextStyle(
                      color: Colors.amber,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SmoothPageIndicator(
                  axisDirection: Axis.horizontal,
                  controller: pageController,
                  count: 4,
                ),
                currentIndex == 3
                    ? SizedBox(width: 10)
                    : GestureDetector(
                        onTap: () {
                          pageController.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.ease,
                          );
                        },
                        child: Text(
                          "Next",
                          style: TextStyle(
                            color: Colors.amber,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
