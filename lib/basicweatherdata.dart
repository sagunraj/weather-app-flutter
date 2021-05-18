import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BasicWeatherData extends StatelessWidget {
  const BasicWeatherData({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 20),
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: (Column(
          children: [
            SizedBox(
              height: 20,
            ),
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
                SizedBox(width: 15),
                Text(
                  "Kathmandu",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "30\u00B0C",
                      style: TextStyle(fontSize: 35, color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Feels like 31\u00B0C",
                      style: TextStyle(color: Colors.white.withOpacity(0.8)),
                    )
                  ],
                ),
                SizedBox(width: 80),
                Column(
                  children: [
                    SvgPicture.asset(
                      "assets/svg/09n.svg",
                      height: 60,
                      width: 60,
                      color: Colors.white,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Rainy",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        )),
      ),
    );
  }
}
