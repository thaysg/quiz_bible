import 'package:flutter/material.dart';
import 'package:quiz_bible/components/constants.dart';

class QuestionWidget extends StatelessWidget {
  final String text;

  const QuestionWidget({this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Color(0xff07091D).withAlpha(100),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            height: 1.3,
            fontSize: 27,
            fontWeight: FontWeight.bold,
            color: kWhiteColor,
            fontFamily: 'Regular 400',
            letterSpacing: 2,
          ),
        ),
      ),
    );
  }
}
