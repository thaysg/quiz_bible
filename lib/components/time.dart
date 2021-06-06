/* import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:quiz_bible/components/constants.dart';

// ignore: must_be_immutable
class TimeWidget extends StatelessWidget {
  CountDownController _controller = CountDownController();
  int duration = 15;
  final VoidCallback nextPage;

  TimeWidget({this.nextPage});

  void resetTime({int duration}) {
    _controller.restart(duration: duration);
  }

  @override
  Widget build(BuildContext context) {
    return CircularCountDownTimer(
      width: MediaQuery.of(context).size.width / 2,
      height: MediaQuery.of(context).size.height / 2,
      duration: duration,
      fillColor: kRed,
      color: kDarkBlue,
      controller: _controller,
      backgroundColor: Colors.transparent,
      strokeWidth: 10.0,
      strokeCap: StrokeCap.round,
      isTimerTextShown: true,
      isReverse: false,
      textStyle: TextStyle(
        fontSize: 50.0,
        color: kWhiteColor,
      ),
      onComplete: nextPage,
    );
  }
}
 */
