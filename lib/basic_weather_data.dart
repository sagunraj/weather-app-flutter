import 'package:flutter/material.dart';
import 'package:myapp/models/weather_data.dart';
import 'package:cached_network_image/cached_network_image.dart';

class BasicWeatherData extends StatelessWidget {
  final WeatherData weatherData;

  const BasicWeatherData({Key key, @required this.weatherData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: (Column(
        children: [
          Text(
            "Today's Weather",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.place,
                color: Colors.white,
              ),
              SizedBox(width: 4),
              Text(
                weatherData.name,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CachedNetworkImage(
                placeholder: (context, url) => CircularProgressIndicator(),
                imageUrl:
                    "https://openweathermap.org/img/w/${weatherData.weather.first.icon}.png",
              ),
              Text(
                "${weatherData.main.temp}\u00B0C",
                style: TextStyle(fontSize: 35, color: Colors.white),
              ),
              SizedBox(height: 10),
              Text(
                "Feels like ${weatherData.main.feelsLike}\u00B0C",
                style: TextStyle(color: Colors.white.withOpacity(0.8)),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
