// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_city.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherCity _$WeatherCityFromJson(Map<String, dynamic> json) => WeatherCity(
      city: City.fromJson(json['city'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WeatherCityToJson(WeatherCity instance) =>
    <String, dynamic>{
      'city': instance.city,
    };

City _$CityFromJson(Map<String, dynamic> json) => City(
      id: json['id'] as int,
      name: json['name'] as String,
      country: json['country'] as String,
      population: json['population'] as int,
      timezone: json['timezone'] as int,
    );

Map<String, dynamic> _$CityToJson(City instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'country': instance.country,
      'population': instance.population,
      'timezone': instance.timezone,
    };
