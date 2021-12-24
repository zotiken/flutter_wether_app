import 'package:json_annotation/json_annotation.dart';

part 'weather_city.g.dart';

@JsonSerializable()
class WeatherCity {
  City city;
  List<Day> list;
  WeatherCity({required this.city, required this.list});
  factory WeatherCity.fromJson(Map<String, dynamic> json) =>
      _$WeatherCityFromJson(json);
}

@JsonSerializable()
class City {
  final int id;
  final String name;
  final String country;
  final int population;
  final int timezone;
  City(
      {required this.id,
      required this.name,
      required this.country,
      required this.population,
      required this.timezone});
  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}

@JsonSerializable()
class Day {
  final int dt,
      sunrise,
      sunset,
      pressure,
      humidity,
      clouds,
      speed,
      deg,
      gust,
      pop;
  final List<Temp> temp;
  Day(
      {required this.dt,
      required this.clouds,
      required this.deg,
      required this.humidity,
      required this.pop,
      required this.gust,
      required this.pressure,
      required this.speed,
      required this.sunrise,
      required this.sunset,
      required this.temp});
  factory Day.fromJson(Map<String, dynamic> json) => _$DayFromJson(json);
}

@JsonSerializable()
class Temp {
  final int day, min, max, night, eve, morn;
  Temp(
      {required this.day,
      required this.min,
      required this.max,
      required this.night,
      required this.eve,
      required this.morn});
  factory Temp.fromJson(json) => _$TempFromJson(json);
}
