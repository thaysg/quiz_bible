import 'package:flutter/material.dart';
import 'package:quiz_bible/components/constants.dart';

class AnswersWidgets extends StatelessWidget {
  final String text;
  final VoidCallback onPress;

  const AnswersWidgets({this.text, this.onPress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: onPress,
        child: Container(
          decoration: BoxDecoration(
            color: kDarkBlue.withAlpha(50),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                letterSpacing: 2,
                fontFamily: 'Regular 400',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
