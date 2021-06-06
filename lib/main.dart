import 'package:flutter/material.dart';
import 'package:quiz_bible/screens/splah_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz Bíblico',
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff07091D),
        scaffoldBackgroundColor: Color(0xff07091D),
      ),
      home: MySplashScreen(),
    );
  }
}
