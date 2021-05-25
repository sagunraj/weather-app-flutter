import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:myapp/models/weather_data.dart';
import 'const.dart';
import 'upper_container.dart';
import 'basic_weather_data.dart';
import 'package:http/http.dart' as http;

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  Future<WeatherData> futureWeatherData;

  Future<WeatherData> fetchWeatherData() async {
    var queryParameters = {
      'q': 'kathmandu',
      'appid': 'YOUR APP ID HERE',
      'units': 'metric'
    };

    final response = await http.get(Uri.https("api.openweathermap.org",
        "data/2.5/weather", queryParameters));

    if (response.statusCode == 200) {
      return WeatherData.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("Failed to load weather data");
    }
  }

  @override
  void initState() {
    super.initState();
    futureWeatherData = fetchWeatherData();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          UpperContainer(size: size),
          SizedBox(
            height: 40,
          ),
          FutureBuilder(
              future: futureWeatherData,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: primarycolor.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: BasicWeatherData(weatherData: snapshot.data));
                } else if (snapshot.hasError) {
                  return Align(
                      alignment: Alignment.center,
                      child: Text(
                        "${snapshot.error}",
                        style: TextStyle(color: Colors.red),
                        textAlign: TextAlign.center,
                      ));
                }
                return CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                );
              }),
        ],
      ),
    );
  }
}
