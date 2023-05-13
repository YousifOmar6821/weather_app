import 'package:flutter/material.dart';

import '../services/weather_services.dart';
class SearchScreen  extends StatelessWidget {
  String?cityNames;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title:  Text('Search for your City'),
      ),
      body: Center(
        child:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextFormField(
            onFieldSubmitted: (data){
              cityNames=data;
              WeatherServices service=WeatherServices();
              service.getWeather(cityName: cityNames!);
            },
            decoration:InputDecoration(
              border:  OutlineInputBorder(),
              hintText: 'Entre a city',
              label: Text('Search'),
              contentPadding: EdgeInsets.symmetric(vertical: 32,horizontal: 24),
              suffixIcon: Icon(Icons.search),
            ),
          ),
        ),
      ),
    );
  }
}
