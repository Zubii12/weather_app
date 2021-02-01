part of weather_models;

abstract class WeatherState implements Built<WeatherState, WeatherStateBuilder> {
  factory WeatherState.initialState() {
    return _$WeatherState((WeatherStateBuilder b) {
      b.forecasts = <AppWeather>[];
    });
  }

  factory WeatherState.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  WeatherState._();

  List<AppWeather> get forecasts;

  @nullable
  Location get location;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<WeatherState> get serializer => _$weatherStateSerializer;
}
