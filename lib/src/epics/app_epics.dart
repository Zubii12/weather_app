import 'package:flutter/material.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:weather_app/src/data/meta_weather_api.dart';
import 'package:weather_app/src/epics/weather_epics.dart';
import 'package:weather_app/src/models/index.dart';

class AppEpics {
  const AppEpics({@required MetaWeatherApi metaWeatherApi})
      : assert(metaWeatherApi != null),
        _metaWeatherApi = metaWeatherApi;

  final MetaWeatherApi _metaWeatherApi;

  Epic<AppState> get epics {
    return combineEpics<AppState>(<Epic<AppState>>[
      WeatherEpics(api: _metaWeatherApi).epics,
    ]);
  }
}
