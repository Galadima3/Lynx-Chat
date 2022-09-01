// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Sample extends StatelessWidget {
  const Sample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.grey[200],
          // body: Center(
          //   child: SvgPicture.asset('images/life.svg'),
          // )
          body: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              SvgPicture.asset('images/life.svg'),
              const Text(
                'Spread Positive Vibes',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.blue,
                      )),
                  IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.blue,
                      ))
                ],
              )
              //IconButton(onPressed: null, icon: FaIcon(FontAwesomeIcons.bitcoin, color: Colors.red,))
            ],
          )),
    );
  }
}
