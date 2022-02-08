import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:weahter/weather location/location.dart';
import 'package:weahter/screens/home.dart';

class lodingScreen extends StatefulWidget {
  @override
  _lodingScreenState createState() => _lodingScreenState();
}

class _lodingScreenState extends State<lodingScreen> {
  getLocation get = getLocation();
  @override
  void initState() {
    super.initState();
    Navigation();
  }

  void Navigation() async {
    var weatherData = await get.getlocation();
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => navigation(weatherData: weatherData)));
    // print(weatherData['weather'][0]['id']);
  }

  // @override
  // void city() async {
  //   setState(() {
  //     get.getlocation();
  //   });

  // }
  // void initState(){
  //   super.initState();
  //   city();
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 100.0,
        ),
      ),
    );
  }
}
