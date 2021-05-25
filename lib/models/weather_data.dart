class MainWeatherInfo {
  double temp;
  double feelsLike;
  double tempMin;
  double tempMax;
  int pressure;
  int humidity;

  MainWeatherInfo(this.temp, this.feelsLike, this.tempMin, this.tempMax,
      this.pressure, this.humidity);

  factory MainWeatherInfo.fromJson(Map<String, dynamic> json) {
    return MainWeatherInfo(json['temp'], json['feels_like'], json['temp_min'],
        json['temp_max'], json['pressure'], json['humidity']);
  }
}

class Weather {
  int id;
  String main;
  String description;
  String icon;

  Weather(this.id, this.main, this.description, this.icon);

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(json['id'], json['main'], json['description'], json['icon']);
  }
}

class WeatherData {
  List<Weather> weather;
  MainWeatherInfo main;
  String name;

  WeatherData(this.weather, this.main, this.name);

  factory WeatherData.fromJson(Map<String, dynamic> json) {
    // List<Weather> weatherList = [];
    // for (var weather in json['weather']) {
    //   weatherList.add(Weather.fromJson(weather));
    // }
    List<Weather> weatherList = json['weather'].map<Weather>((weather) => Weather.fromJson(weather)).toList();

    return WeatherData(weatherList, MainWeatherInfo.fromJson(json['main']), json['name']);
  }
}