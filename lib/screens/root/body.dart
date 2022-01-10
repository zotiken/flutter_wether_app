import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_weather_app/screens/root/top_cities_list.dart';

class BodyRoot extends StatelessWidget {
  const BodyRoot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _line() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.black38))),
      );
    }

    _popularBlock() {
      return Column(
        children: [
          Padding(padding: EdgeInsets.all(10)),
          Text(
            "Popular".toLowerCase(),
            style: Theme.of(context).textTheme.headline6,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              clipBehavior: Clip.antiAlias,
              children: [
                ...cities.map((city) => Container(
                    margin: EdgeInsets.symmetric(horizontal: 2),
                    child: Chip(label: Text(city))))
              ],
            ),
          ),
        ],
      );
    }

    _localBlock() {
      return Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                blurRadius: 10,
                spreadRadius: 5,
                color: Colors.black12,
                offset: Offset(0, 0))
          ],
        ),
        child: Column(
          children: [
            Text(
              "Local",
              style: Theme.of(context).textTheme.headline6,
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    'City',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [Text("cloudy"), Text('+10 C')],
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    _weatherCityBlock() {
      return Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://i.pinimg.com/originals/d6/7b/1b/d67b1b8a5293320d7f5aef711afc65ae.jpg')),
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: SizedBox(
          height: 400,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  // direction: Axis.vertical,
                  children: [
                    Text(
                      'City',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 70,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [Text("cloudy"), Text('+10 C')],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
    }

    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Column(
                children: [
                  Text(
                    "Enter City name".toLowerCase(),
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 0, horizontal: 5),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(color: Colors.black87)),
                          icon: Icon(Icons.search_outlined),
                          floatingLabelBehavior: FloatingLabelBehavior.never),
                    ),
                  )
                ],
              ),
            ),
            _line(),
            _popularBlock(),
            _line(),
            _localBlock(),
            _line(),
            _weatherCityBlock(),
          ],
        ),
      ),
    );
  }
}
