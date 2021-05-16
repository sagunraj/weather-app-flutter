import 'package:flutter/material.dart';
import './const.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: size.height * 0.2,
            child: Stack(
              children: [
                Container(
                  height: size.height * 0.2 - 27,
                  decoration: BoxDecoration(
                      color: primarycolor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(36),
                        bottomRight: Radius.circular(36),
                      )),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 50,
                            color: primarycolor.withOpacity(0.3))
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(
                          color: primarycolor.withOpacity(0.5),
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        suffixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
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
              Positioned(
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
                                "30°C",
                                style: TextStyle(
                                    fontSize: 35, color: Colors.white),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Feels like 31°C",
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.8)),
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
              ),
            ],
          ),
        ],
      ),
    );
  }
}
