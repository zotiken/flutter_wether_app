import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_weather_app/api/weather_api.dart';
import 'package:flutter_weather_app/model/weather_city.dart';
import 'package:flutter_weather_app/util/constant.dart';
import 'package:intl/intl.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  late Future<ForecastCity> forecastCity;
  @override
  void initState() {
    super.initState();
    forecastCity = WeatherApi().getForecastInTheCity(city: 'London');
  }

  TextEditingController _inputcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.red,
      //   title: Text(widget.title),
      // ),
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(
            color: Colors.blue[400],
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage('assets/img.jpeg'))),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              // padding: EdgeInsets.only(bottom: 20),
              child: TextField(
                controller: _inputcontroller,
                onSubmitted: (value) => setState(() {
                  forecastCity = WeatherApi().getForecastInTheCity(city: value);
                }),
                style: TextStyle(color: Colors.black87),
                decoration: InputDecoration(
                    focusColor: Colors.black87,
                    hoverColor: Colors.black87,
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    hintText: "input city name",
                    fillColor: Colors.white,
                    labelText: 'City'),
              ),
            ),
            Center(
                child: FutureBuilder<ForecastCity>(
                    future: forecastCity,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        log(snapshot.data!.message.toString());
                        if (snapshot.data!.message.runtimeType == String) {
                          return Text(snapshot.data!.message);
                        }
                        return Column(
                          children: [
                            Padding(padding: EdgeInsets.all(20)),
                            Text(
                              '${snapshot.data!.city!.name}',
                              style: Theme.of(context).textTheme.headline2,
                            ),
                            Image.network(
                              Constant.ICON_FULL_PATH.replaceFirst('{icon}',
                                  snapshot.data!.list![0].weather![0].icon),
                              scale: 0.5,
                            ),
                            Text(
                              '${snapshot.data!.list![0].weather![0].description} ${snapshot.data!.list![0].temp!.max}C',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 0),
                              padding: EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 20),
                              alignment: Alignment.center,
                              width: MediaQuery.of(context).size.width,
                              height: 100,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: snapshot.data!.list!.length,
                                  itemBuilder: (context, index) {
                                    return Container(
                                        width: 120,
                                        margin: EdgeInsets.only(right: 5),
                                        padding: EdgeInsets.all(20),
                                        decoration: BoxDecoration(
                                            color: Colors.black87,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                                color: Colors.white24)),
                                        child: Column(
                                          children: [
                                            Text(DateFormat('EEEE').format(
                                                DateTime.parse(snapshot
                                                    .data!.list![index].dt
                                                    .toString()))),
                                            Image.network(
                                              Constant.ICON_FULL_PATH
                                                  .replaceFirst(
                                                      '{icon}',
                                                      snapshot
                                                          .data!
                                                          .list![index]
                                                          .weather![0]
                                                          .icon),
                                              scale: 2,
                                            ),
                                          ],
                                        ));
                                  }),
                            )
                          ],
                        );
                      } else {
                        return Center(child: CircularProgressIndicator());
                      }
                    })),
          ],
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
