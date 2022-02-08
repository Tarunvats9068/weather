import 'dart:convert';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;

class getLocation {
  static String apikey = '1e53feb8e2102b16f677f67f95d2acb0';
  Future getlocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    return await getWeather(position.latitude, position.longitude);
  }

  Future getWeather(double lati, double longi) async {
    String url =
        await 'https://api.openweathermap.org/data/2.5/weather?lat=$lati&lon=$longi&appid=$apikey&units=metric';
    http.Response response = await http.get(Uri.parse(url));
    String data = await response.body;
    return jsonDecode(data);
  }
}
