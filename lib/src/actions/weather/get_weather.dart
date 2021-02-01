part of weather_actions;

@freezed
abstract class GetWeather with _$GetWeather implements AppAction {
  const factory GetWeather(String woeid) = GetWeather$;

  const factory GetWeather.successful(List<AppWeather> forecasts) = GetWeatherSuccessful;

  @Implements(ErrorAction)
  const factory GetWeather.error(Object error) = GetWeatherError;
}
