import 'dart:ui';

import 'package:basic_3/login.dart';
import 'package:basic_3/signup.dart';
import 'package:basic_3/slide_item.dart';
import 'package:basic_3/slider.dart';
import 'package:flutter/material.dart';

import 'drawer2.dart';

class HomeScreen extends StatelessWidget {
  final PageController _pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 800,
            child: Scaffold(
                appBar: AppBar(
                  title: Text(
                    "HomeScreen",
                  ),
                ),
                drawer: DrawerApp(),
                body: Container(
                  color: Colors.teal[50],
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    
                    Expanded(
                      child: PageView.builder(
                        scrollDirection: Axis.horizontal,
                        controller: _pageController,
                        itemCount: slideList.length,
                        itemBuilder: (ctx, index) => SliderApp(index),
                      ),
                    ),
                    FlatButton(
                      child: Text('Get Started',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpApp()));
                      },
                      textColor: Colors.white,
                      color: Colors.green,
                      minWidth: 300,
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Have an Account?",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 18),
                        ),
                        FlatButton(
                          child: Text(
                            "Login",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 22),
                          ),
                          textColor: Colors.green,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginApp()));
                          },
                        ),
                      ],
                    ),
                  ]),
                )),
          ),
        ],
      ),
    );
  }
}
