import 'package:flutter/material.dart';
import 'package:quiz_bible/components/background_screen.dart';
import 'package:quiz_bible/components/constants.dart';

class TrofyScreen extends StatelessWidget {
  final VoidCallback onTap;
  final int userScore;
  final String text;
  final AssetImage picture;

  const TrofyScreen({this.onTap, this.userScore, this.text, this.picture});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackGroundScreen(
        childWidget: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    'Sua Pontuação',
                    style: TextStyle(
                      fontSize: 50,
                      letterSpacing: 2,
                      fontFamily: 'Regular 400',
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    '${userScore.toString()} Pontos',
                    style: TextStyle(
                      fontSize: 50,
                      letterSpacing: 2,
                      fontFamily: 'Regular 400',
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      text,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 45,
                        letterSpacing: 2,
                        fontFamily: 'Regular 400',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Image(image: picture),
                ),
                Expanded(
                  flex: 3,
                  child: Center(
                    child: ElevatedButton.icon(
                      onPressed: onTap,
                      icon: Icon(
                        Icons.refresh,
                        size: 45,
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: kDarkBlue.withAlpha(50),
                      ),
                      label: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "Jogar Novamente",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                            fontFamily: 'Regular 400',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
