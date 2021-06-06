import 'package:flutter/material.dart';
import 'package:quiz_bible/screens/home_screen.dart';
import 'package:splashscreen/splashscreen.dart';

class MySplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SplashScreen(
            seconds: 3,
            navigateAfterSeconds: HomeScreen(),
            loaderColor: Colors.transparent,
          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: ExactAssetImage(
                  'images/Wavy_Lst-13_Single-11.jpg',
                ),
              ),
            ),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(35.0),
                child: Text(
                  'Quiz Bíblico',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 60,
                    color: Color(0xff532c61),
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Regular 400',
                    shadows: [
                      Shadow(
                          blurRadius: 5.0,
                          color: Color(0xfffaa54b),
                          offset: Offset(3.0, 3.0)),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
