class Constant {
  static String WEATHER_API_ID = '1369dd6b5ae78fc9952261ab9aa236b4';
  static String PROTOCOL = 'https://';
  static String WEATHER_DOMAIN = 'api.openweathermap.org';
  static String WEATHER_PATH = '/data/2.5/forecast/daily';
  static String WEATHER_FULL_PATH = PROTOCOL + WEATHER_DOMAIN + WEATHER_PATH;
  static String ICON_PATH = '/img/w/{icon}.png';
  static String ICON_FULL_PATH = PROTOCOL + WEATHER_DOMAIN + ICON_PATH;
}
