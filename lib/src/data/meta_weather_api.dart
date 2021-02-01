import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:weather_app/src/models/weather/index.dart';

class MetaWeatherApi {
  const MetaWeatherApi({@required Client client})
      : assert(client != null),
        _client = client;
  final Client _client;

  Future<Location> searchLocation(String query) async {
    final Uri url = Uri(
      scheme: 'https',
      host: 'www.metaweather.com',
      pathSegments: <String>['api', 'location', 'search'],
      queryParameters: <String, String>{
        'query': query,
      },
    );
    final Response response = await _client.get(url);
    final List<dynamic> data = jsonDecode(response.body);
    print(data.first);
    return Location.fromJson(data.first);
  }

  Future<List<AppWeather>> getWeather(String woeid) async {
    final Uri url = Uri(
      scheme: 'https',
      host: 'www.metaweather.com',
      pathSegments: <String>['api', 'location', woeid],
    );

    final Response response = await _client.get(url);
    final dynamic data = jsonDecode(response.body);
    final List<dynamic> ba = data['consolidated_weather'];
    return ba.map((dynamic json) => AppWeather.fromJson(json)).toList();
    //final cf = data['consolidated_weather'].map((dynamic json) => AppWeather.fromJson(json));
  }
}
