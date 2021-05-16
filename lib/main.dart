import 'package:flutter/material.dart';
import './body.dart';
import './const.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My Weather App",
      theme: ThemeData(
        primaryColor: primarycolor,
      ),
      home: MainScaffold(),
    );
  }
}

class MainScaffold extends StatelessWidget {
  const MainScaffold({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
          ),
          onPressed: () {},
        ),
        // title: Text("Weather App"),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
