import 'package:flutter/material.dart';
import 'package:lynx/intro_screens/intro_screen1.dart';
import 'package:lynx/onboarding_screen.dart';
import 'package:lynx/test.dart';

void main() =>
  runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: OnBoardingScreen(),
      //home: const IntroPage1(),
    );
  }
}

