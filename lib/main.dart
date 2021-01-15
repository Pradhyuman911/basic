import 'package:flutter/material.dart';
import './homescreen.dart';
// import 'package:basic_3/firstUI.dart';
// import 'package:basic_3/drawer.dart';
import 'package:basic_3/drawer2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Basic Layout UI",
      theme: ThemeData(primarySwatch: Colors.blue),
      routes: {
        "/" : (_) => HomeScreen(),
        // "/drawer2": (_) => DrawerApp(),
      },
    );
  }
}

