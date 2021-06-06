import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:quiz_bible/components/answer_widget.dart';
import 'package:quiz_bible/components/background_screen.dart';
import 'package:quiz_bible/components/constants.dart';
import 'package:quiz_bible/components/questionWidget.dart';
import 'package:quiz_bible/easy/models/easy_model.dart';
import 'package:quiz_bible/screens/home_screen.dart';
import 'package:quiz_bible/screens/trofy_screen.dart';

class EasyScreen extends StatefulWidget {
  @override
  _EasyScreenState createState() => _EasyScreenState();
}

class _EasyScreenState extends State<EasyScreen> {
  CountDownController _controller = CountDownController();
  int _duration = 15;

  void updateQuiz([bool onComplete = false]) {
    setState(() {
      if (questionNumber == easyQuiz.questions.length - 1) {
        _showEndDialog();
      } else {
        if(onComplete && _controller.getTime() == "0") questionNumber ++;
        resetTime();
        // print(updateQuiz);
      }
    });
  }

  void _showEndDialog() {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return TrofyScreen(
            onTap: () {
              resetGame();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ),
              );
            },
            userScore: score,
            text: totalScore(),
            picture: getImage(),
          );
        });
  }

  AssetImage gold = AssetImage('images/gold-cup.png');
  AssetImage silver = AssetImage('images/silver-cup.png');
  AssetImage sad = AssetImage('images/sad.png');

  totalScore() {
    if (score >= 9) {
      return 'Parabéns';
    } else if (score >= 7 && score < 9) {
      return 'Ótimo, você tem estudado a Bíblia, continue assim';
    } else {
      return 'Você realmente precisa ler a Bíblia';
    }
  }

  getImage() {
    if (score >= 9) {
      return gold;
    } else if (score >= 7 && score < 9) {
      return silver;
    } else {
      return sad;
    }
  }

  //reset game
  resetGame() {
    setState(() {
      Navigator.pop(context);
      score = 0;
      questionNumber = 0;
    });
  }

  void resetTime({int duration}) {
    _controller.restart(duration: _duration);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackGroundScreen(
        childWidget: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: CircularCountDownTimer(
                    width: MediaQuery.of(context).size.width / 2,
                    height: MediaQuery.of(context).size.height / 2,
                    duration: _duration,
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
                    onComplete: () {
                      updateQuiz(true);
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  flex: 2,
                  child: QuestionWidget(
                    text: easyQuiz.questions[questionNumber],
                  ),
                ),
                Expanded(
                  child: AnswersWidgets(
                    onPress: () {
                      if (easyQuiz.choices[questionNumber][0] ==
                          easyQuiz.correctAnswer[questionNumber]) {
                        debugPrint("Correct");
                        score++;
                      } else {
                        debugPrint("Wrong");
                      }
                      updateQuiz();
                    },
                    text: easyQuiz.choices[questionNumber][0],
                  ),
                ),
                Expanded(
                  child: AnswersWidgets(
                    onPress: () {
                      if (easyQuiz.choices[questionNumber][1] ==
                          easyQuiz.correctAnswer[questionNumber]) {
                        debugPrint("Correct");
                        score++;
                      } else {
                        debugPrint("Wrong");
                      }
                      updateQuiz();
                    },
                    text: easyQuiz.choices[questionNumber][1],
                  ),
                ),
                Expanded(
                  child: AnswersWidgets(
                    onPress: () {
                      if (easyQuiz.choices[questionNumber][2] ==
                          easyQuiz.correctAnswer[questionNumber]) {
                        debugPrint("Correct");
                        score++;
                      } else {
                        debugPrint("Wrong");
                      }
                      updateQuiz();
                    },
                    text: easyQuiz.choices[questionNumber][2],
                  ),
                ),
                Expanded(
                  child: AnswersWidgets(
                    onPress: () {
                      if (easyQuiz.choices[questionNumber][3] ==
                          easyQuiz.correctAnswer[questionNumber]) {
                        debugPrint("Correct");
                        score++;
                      } else {
                        debugPrint("Wrong");
                      }
                      updateQuiz();
                    },
                    text: easyQuiz.choices[questionNumber][3],
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    color: kWhiteColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
