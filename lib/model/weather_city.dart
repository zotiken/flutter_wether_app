import 'package:json_annotation/json_annotation.dart';

part 'weather_city.g.dart';

@JsonSerializable()
class WeatherCity {
  City city;
  WeatherCity({required this.city});
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
