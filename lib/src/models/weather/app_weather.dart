part of weather_models;

abstract class AppWeather implements Built<AppWeather, AppWeatherBuilder> {
  factory AppWeather([void Function(AppWeatherBuilder b) updates]) = _$AppWeather;

  factory AppWeather.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  AppWeather._();

  @BuiltValueField(wireName: 'weather_state_name')
  String get weatherStateName;

  @BuiltValueField(wireName: 'weather_state_abbr')
  String get weatherStateAbbr;

  @BuiltValueField(wireName: 'applicable_date')
  String get applicableDate;

  @BuiltValueField(wireName: 'min_temp')
  double get minTemp;

  @BuiltValueField(wireName: 'max_temp')
  double get maxTemp;

  @BuiltValueField(wireName: 'the_temp')
  double get theTemp;

  @BuiltValueField(wireName: 'humidity')
  double get humidity;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<AppWeather> get serializer => _$appWeatherSerializer;
}
