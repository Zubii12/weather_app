import 'package:flutter/cupertino.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:weather_app/src/actions/index.dart';
import 'package:weather_app/src/data/meta_weather_api.dart';
import 'package:weather_app/src/models/index.dart';
import 'package:rxdart/rxdart.dart';
import 'package:weather_app/src/models/weather/index.dart';

class WeatherEpics {
  const WeatherEpics({@required MetaWeatherApi api})
      : assert(api != null),
        _api = api;

  final MetaWeatherApi _api;

  Epic<AppState> get epics {
    return combineEpics<AppState>(<Epic<AppState>>[
      TypedEpic<AppState, SearchLocation$>(_searchLocation),
      TypedEpic<AppState, GetWeather$>(_getWeather),
    ]);
  }

  Stream<AppAction> _searchLocation(Stream<SearchLocation$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((SearchLocation$ action) => Stream<SearchLocation$>.value(action)
            .asyncMap((SearchLocation$ action) => _api.searchLocation(action.query))
            //.map((Location location) => SearchLocation.successful(location))
            .expand((Location location) => <AppAction>[
                  SearchLocation.successful(location),
                  GetWeather(location.woeid.toString()),
                ])
            .onErrorReturnWith((dynamic error) => SearchLocation.error(error)));
  }

  Stream<AppAction> _getWeather(Stream<GetWeather$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetWeather$ action) => Stream<GetWeather$>.value(action)
            .asyncMap((GetWeather$ action) => _api.getWeather(action.woeid))
            .map((List<AppWeather> forecasts) => GetWeather.successful(forecasts))
            .onErrorReturnWith((dynamic error) => GetWeather.error(error)));
  }
}
