part of weather_models;

abstract class Location implements Built<Location, LocationBuilder> {
  factory Location([void Function(LocationBuilder b) updates]) = _$Location;

  factory Location.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  Location._();

  String get title;

  @BuiltValueField(wireName: 'location_type')
  String get locationType;

  int get woeid;

  @BuiltValueField(wireName: 'latt_long')
  String get lattLong;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<Location> get serializer => _$locationSerializer;
}
