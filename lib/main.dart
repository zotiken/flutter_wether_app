import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_weather_app/model/weather_city.dart';
import 'package:flutter_weather_app/util/constant.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MaterialApp(home: Scaffold(body: MyApp())));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  City? city;
  @override
  void initState() {
    Future.delayed(Duration(seconds: 1), () async {
      String param = PARAM
          .replaceFirst('{city}', "London")
          .replaceFirst("{days}", '7')
          .replaceFirst("{API key}", APIKEY);
      Uri url = Uri.parse(PROTOCOL + ADRESS + param);
      var response = await http.get(url);
      log(response.toString());
      City value = WeatherCity.fromJson(json.decode(response.body)).city;
      log(city.toString());
      setState(() {
        city = value;
      });
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(city != null ? city!.name.toString() : "not found"),
    );
  }
}
