// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lynx/intro_screens/intro_screen1.dart';
import 'package:lynx/intro_screens/intro_screen2.dart';
import 'package:lynx/intro_screens/intro_screen3.dart';

import 'package:lynx/auth/main_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _controller = PageController();

  //check if we are on last page
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (value) {
              setState(() {
                onLastPage = (value == 2);
              });
            },
            children: const [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //text
                IconButton(
                    onPressed: () => _controller.previousPage(
                        duration: Duration(seconds: 2),
                        curve: Curves.easeInBack),
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.blue,
                    )),

                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  
                ),

                //text
                onLastPage
                    ? IconButton(
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MainPage(),
                            )),
                        icon: Icon(
                          Icons.done,
                          color: Colors.blue,
                        ))
                    : IconButton(
                        onPressed: () => _controller.nextPage(
                            duration: Duration(seconds: 2),
                            curve: Curves.bounceIn),
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.blue,
                        )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
