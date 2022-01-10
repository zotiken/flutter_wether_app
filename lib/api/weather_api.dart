import 'dart:convert';
import 'dart:developer';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_weather_app/model/weather_city.dart';
import 'package:flutter_weather_app/util/constant.dart';
import 'package:http/http.dart' as http;

class WeatherApi {
  Future<ForecastCity> getForecastInTheCity({required String city}) async {
    var queryParameters = {
      'q': city,
      'units': 'metric',
      'appid': Constant.WEATHER_API_ID,
      'cnt': '7',
    };

    http.Response response = await http.get(Uri.https(
        Constant.WEATHER_DOMAIN, Constant.WEATHER_PATH, queryParameters));
    return ForecastCity.fromJson(json.decode(response.body));
  }

  Future<Uint8List> getWeatherIcon(icon) async {
    http.Response response = await http
        .get(Uri.parse(Constant.ICON_FULL_PATH.replaceFirst('{icon}', icon)));
    return response.bodyBytes;
  }
}
