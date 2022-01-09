import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_weather_app/api/weather_api.dart';
import 'package:flutter_weather_app/model/weather_city.dart';
import 'package:flutter_weather_app/screens/mainpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather prediction',
      theme: ThemeData(
          primarySwatch: Colors.cyan, textTheme: Typography.whiteCupertino),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  // late AnimationController _animationController;
  @override
  void initState() {
    super.initState();
    // _animationController = AnimationController(
    //   vsync: this,
    //   value: 0,
    //   lowerBound: 0.0,
    //   upperBound: 1.0,
    //   duration: new Duration(milliseconds: 2000),
    // );
    // _animationController.forward();
    // _animationController.addListener(() {
    //   setState(() {
    //     if (_animationController.status == AnimationStatus.completed) {
    //       _animationController.repeat();
    //     }
    //   });
    // });
    _toHomePage();
  }

  _toHomePage() async {
    await Future.delayed(Duration(milliseconds: 2000));
    Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) {
        return MyHomePage(title: "Prediction");
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
      child:
          // AnimatedBuilder(
          //   animation: _animationController,
          //   builder: (BuildContext context, Widget) {
          //     return Transform.scale(
          //       scale: _animationController.value,
          //       child:
          Image(image: AssetImage("assets/earch.png")),
      //   );
      // },
      // ),
    )));
  }
}
