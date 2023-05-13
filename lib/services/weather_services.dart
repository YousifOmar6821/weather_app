import 'dart:convert';
import 'package:http/http.dart' as http;
class WeatherServices{
  String baseUrl='http://api.weatherapi.com/v1';
  String apiKey='575207548cae4163a40201423231203';
  void getWeather({required String cityName})async{
    Uri url=Uri.parse('$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=7');
    http.Response response=await http.get(url);
    Map<String,dynamic> data=jsonDecode(response.body);
      print(data);
  }
}