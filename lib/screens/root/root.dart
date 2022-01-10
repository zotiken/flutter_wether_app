import 'package:flutter/material.dart';
import 'package:flutter_weather_app/screens/root/body.dart';

class RootApp extends StatelessWidget {
  final String _title = 'prophet';
  const RootApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          )
        ],
        title: Text(
          _title.toUpperCase(),
          style: TextStyle(
            letterSpacing: 2,
          ),
        ),
      ),
      body: BodyRoot(),
    );
  }
}
