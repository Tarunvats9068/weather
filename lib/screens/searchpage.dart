import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FaIcon(
                FontAwesomeIcons.cloud,
              ),
              SizedBox(
                width: 10.0,
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
        body: Container(
          margin: EdgeInsets.all(10.0),
          child: TextFormField(
            onChanged: (value) {
              print(value);
            },
            decoration: InputDecoration(
              hintText: 'Enter the city name',
              border: OutlineInputBorder(),
              icon: FaIcon(FontAwesomeIcons.city),
            ),
          ),
        ),
      )),
    );
  }
}
