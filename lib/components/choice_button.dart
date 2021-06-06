import 'package:flutter/material.dart';
import 'package:quiz_bible/components/constants.dart';

class ChoiceButton extends StatelessWidget {
  final String text;
  final Color colour;
  final VoidCallback onTap;
  final AssetImage picture;
  final Color imagecolour;

  const ChoiceButton(
      {this.text, this.colour, this.onTap, this.picture, this.imagecolour});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        shadowColor: kGrayColor,
        elevation: 5,
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        color: kWhiteColor,
        child: SizedBox(
          height: MediaQuery.of(context).size.height * .20,
          width: MediaQuery.of(context).size.width * .40,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: picture,
                  color: imagecolour,
                  width: 50,
                ),
                Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    /* Color(
                      0xfff3f6f6,
                    ), */
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Regular 400',
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
