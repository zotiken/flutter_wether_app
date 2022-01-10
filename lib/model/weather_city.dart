class ForecastCity {
  City? city;
  String? cod;
  dynamic? message;
  int? cnt;
  List<Day>? list;

  ForecastCity(
      {required this.city,
      required this.cod,
      required this.message,
      required this.cnt,
      required this.list});

  ForecastCity.fromJson(Map<String, dynamic> json) {
    city = json['city'] != null ? City.fromJson(json['city']) : null;
    cod = json['cod'];
    message = json['message'];
    cnt = json['cnt'];
    if (json['list'] != null) {
      list = <Day>[];
      json['list'].forEach((v) {
        list!.add(new Day.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.city != null) {
      data['city'] = this.city!.toJson();
    }
    data['cod'] = this.cod;
    data['message'] = this.message;
    data['cnt'] = this.cnt;
    if (this.list != null) {
      data['list'] = this.list!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class City {
  int? id;
  String? name;
  Coord? coord;
  String? country;
  int? population;
  int? timezone;

  City(
      {required this.id,
      required this.name,
      required this.coord,
      required this.country,
      required this.population,
      required this.timezone});

  City.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    coord = json['coord'] != null ? Coord.fromJson(json['coord']) : null;
    country = json['country'];
    population = json['population'];
    timezone = json['timezone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    if (this.coord != null) {
      data['coord'] = this.coord!.toJson();
    }
    data['country'] = this.country;
    data['population'] = this.population;
    data['timezone'] = this.timezone;
    return data;
  }
}

class Coord {
  double? lon;
  double? lat;

  Coord({required this.lon, required this.lat});

  Coord.fromJson(Map<String, dynamic> json) {
    lon = json['lon'];
    lat = json['lat'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lon'] = this.lon;
    data['lat'] = this.lat;
    return data;
  }
}

class Day {
  int? dt;
  int? sunrise;
  int? sunset;
  Temp? temp;
  FeelsLike? feelsLike;
  int? pressure;
  int? humidity;
  List<Weather>? weather;
  double? speed;
  int? deg;
  num? gust;
  int? clouds;
  num? pop;
  double? rain;

  Day(
      {required this.dt,
      required this.sunrise,
      required this.sunset,
      required this.temp,
      required this.feelsLike,
      required this.pressure,
      required this.humidity,
      required this.weather,
      required this.speed,
      required this.deg,
      required this.gust,
      required this.clouds,
      required this.pop,
      required this.rain});

  Day.fromJson(Map<String, dynamic> json) {
    dt = json['dt'];
    sunrise = json['sunrise'];
    sunset = json['sunset'];
    temp = Temp.fromJson(json['temp']);
    feelsLike = FeelsLike.fromJson(json['feels_like']);
    pressure = json['pressure'];
    humidity = json['humidity'];
    if (json['weather'] != null) {
      weather = <Weather>[];
      json['weather'].forEach((v) {
        weather!.add(Weather.fromJson(v));
      });
    }
    speed = json['speed'];
    deg = json['deg'];
    gust = json['gust'];
    clouds = json['clouds'];
    pop = json['pop'];
    rain = json['rain'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['dt'] = this.dt;
    data['sunrise'] = this.sunrise;
    data['sunset'] = this.sunset;
    if (this.temp != null) {
      data['temp'] = this.temp!.toJson();
    }
    if (this.feelsLike != null) {
      data['feels_like'] = this.feelsLike!.toJson();
    }
    data['pressure'] = this.pressure;
    data['humidity'] = this.humidity;
    if (this.weather != null) {
      data['weather'] = this.weather!.map((v) => v.toJson()).toList();
    }
    data['speed'] = this.speed;
    data['deg'] = this.deg;
    data['gust'] = this.gust;
    data['clouds'] = this.clouds;
    data['pop'] = this.pop;
    data['rain'] = this.rain;
    return data;
  }
}

class Temp {
  num day;
  num min;
  num max;
  num night;
  num eve;
  num morn;

  Temp(
      {required this.day,
      required this.min,
      required this.max,
      required this.night,
      required this.eve,
      required this.morn});

  Temp.fromJson(Map<String, dynamic> json)
      : day = json['day'],
        min = json['min'],
        max = json['max'],
        night = json['night'],
        eve = json['eve'],
        morn = json['morn'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['day'] = this.day;
    data['min'] = this.min;
    data['max'] = this.max;
    data['night'] = this.night;
    data['eve'] = this.eve;
    data['morn'] = this.morn;
    return data;
  }
}

class FeelsLike {
  num day;
  num night;
  num eve;
  num morn;

  FeelsLike(
      {required this.day,
      required this.night,
      required this.eve,
      required this.morn});

  FeelsLike.fromJson(Map<String, dynamic> json)
      : this.day = json['day'],
        this.night = json['night'],
        this.eve = json['eve'],
        this.morn = json['morn'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['day'] = this.day;
    data['night'] = this.night;
    data['eve'] = this.eve;
    data['morn'] = this.morn;
    return data;
  }
}

class Weather {
  int id;
  String main;
  String description;
  String icon;

  Weather(
      {required this.id,
      required this.main,
      required this.description,
      required this.icon});

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
        id: json['id'],
        main: json['main'],
        description: json['description'],
        icon: json['icon']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['main'] = this.main;
    data['description'] = this.description;
    data['icon'] = this.icon;
    return data;
  }
}
