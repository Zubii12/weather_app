import 'package:built_collection/built_collection.dart';
import 'package:redux/redux.dart';
import 'package:weather_app/src/actions/index.dart';
import 'package:weather_app/src/models/weather/index.dart';

Reducer<WeatherState> weatherReducer = combineReducers(<Reducer<WeatherState>>[
  TypedReducer<WeatherState, SearchLocationSuccessful>(_searchLocationSuccessful),
  TypedReducer<WeatherState, GetWeatherSuccessful>(_getWeatherSuccessful),
]);

WeatherState _searchLocationSuccessful(WeatherState state, SearchLocationSuccessful action) {
  return state.rebuild((WeatherStateBuilder b) => b.location = action.location.toBuilder());
}

WeatherState _getWeatherSuccessful(WeatherState state, GetWeatherSuccessful action) {
  return state.rebuild((WeatherStateBuilder b) {
    b.forecasts = ListBuilder<AppWeather>(action.forecasts).build().toList();
  });
}
