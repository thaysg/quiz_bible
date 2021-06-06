import 'package:flutter/material.dart';

class BackGroundScreen extends StatelessWidget {
  final Widget childWidget;

  const BackGroundScreen({this.childWidget});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          //repeat: ImageRepeat.repeat,
          image: AssetImage(
            'images/4884841.jpg',
          ),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.white12.withOpacity(.5),
            BlendMode.dstATop,
          ),
        ),
      ),
      child: childWidget,
    );
  }
}
