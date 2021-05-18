import 'package:flutter/material.dart';
import 'const.dart';
import 'package:flutter_svg/svg.dart';
import './uppercontainer.dart';
import './basicweatherdata.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
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
          Stack(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                margin: EdgeInsets.symmetric(horizontal: 20),
                height: size.height * 0.26,
                decoration: BoxDecoration(
                  color: primarycolor.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              BasicWeatherData(),
            ],
          ),
        ],
      ),
    );
  }
}
