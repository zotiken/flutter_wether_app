import 'package:flutter/material.dart';
import 'package:flutter_weather_app/screens/root/root.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Weather_zotiken",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'Roboto',
          appBarTheme: AppBarTheme(
              shape: Border.all(color: Colors.black),
              color: Colors.indigo[900]),
          primaryColor: Colors.black),
      home: RootApp(),
    );
  }
}
