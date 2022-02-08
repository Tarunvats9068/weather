import 'dart:convert';
import 'package:weahter/weather location/location.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'searchpage.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;

class navigation extends StatefulWidget {
  navigation({this.weatherData});
  final weatherData;
  @override
  _navigationState createState() => _navigationState();
}

class _navigationState extends State<navigation> {
  @override
  double? temp;
  String? cityName;
  void initState() {
    super.initState();
    // print(widget.weatherData);
    temp = widget.weatherData['main']['temp'];
    cityName = widget.weatherData['name'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SearchBar()),
                );
              },
              splashRadius: 20.0,
              icon: Icon(
                Icons.search,
              ),
            ),
          ),
          IconButton(
            onPressed: () async {
              // city();
            },
            splashRadius: 20.0,
            tooltip: 'get the current location weather',
            icon: Icon(Icons.navigation),
          ),
        ],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FaIcon(
              FontAwesomeIcons.cloud,
            ),
            SizedBox(
              width: 5.0,
            ),
            Text(
              'Weather',
              style: GoogleFonts.mcLaren(
                textStyle: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w900,
                  fontSize: 32.0,
                ),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.black,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Center(
                child: Text(
                  'Temperature :-' + '$tempº',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 22.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              margin: EdgeInsets.all(30.0),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(35.0),
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Center(
                child: Text(
                  'cityname :- $cityName',
                  style: GoogleFonts.lato(
                    textStyle: TextStyle(
                      color: Colors.red,
                      fontSize: 22.0,
                    ),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              margin: EdgeInsets.all(30.0),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(25.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
