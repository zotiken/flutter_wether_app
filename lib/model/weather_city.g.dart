// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_city.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherCity _$WeatherCityFromJson(Map<String, dynamic> json) => WeatherCity(
      city: City.fromJson(json['city'] as Map<String, dynamic>),
      list: (json['list'] as List<dynamic>)
          .map((e) => Day.fromJson(e as List<dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WeatherCityToJson(WeatherCity instance) =>
    <String, dynamic>{
      'city': instance.city,
      'list': instance.list,
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

Day _$DayFromJson(Map<String, dynamic> json) => Day(
      dt: json['dt'] as int,
      clouds: json['clouds'] as int,
      deg: json['deg'] as int,
      humidity: json['humidity'] as int,
      pop: json['pop'] as int,
      gust: json['gust'] as int,
      pressure: json['pressure'] as int,
      speed: json['speed'] as int,
      sunrise: json['sunrise'] as int,
      sunset: json['sunset'] as int,
      temp:
          (json['temp'] as List<dynamic>).map((e) => Temp.fromJson(e)).toList(),
    );

Map<String, dynamic> _$DayToJson(Day instance) => <String, dynamic>{
      'dt': instance.dt,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'clouds': instance.clouds,
      'speed': instance.speed,
      'deg': instance.deg,
      'gust': instance.gust,
      'pop': instance.pop,
      'temp': instance.temp,
    };

Temp _$TempFromJson(Map<String, dynamic> json) => Temp(
      day: json['day'] as int,
      min: json['min'] as int,
      max: json['max'] as int,
      night: json['night'] as int,
      eve: json['eve'] as int,
      morn: json['morn'] as int,
    );

Map<String, dynamic> _$TempToJson(Temp instance) => <String, dynamic>{
      'day': instance.day,
      'min': instance.min,
      'max': instance.max,
      'night': instance.night,
      'eve': instance.eve,
      'morn': instance.morn,
    };
