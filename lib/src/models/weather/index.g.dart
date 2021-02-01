// GENERATED CODE - DO NOT MODIFY BY HAND

part of weather_models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppWeather> _$appWeatherSerializer = new _$AppWeatherSerializer();
Serializer<Location> _$locationSerializer = new _$LocationSerializer();
Serializer<WeatherState> _$weatherStateSerializer =
    new _$WeatherStateSerializer();

class _$AppWeatherSerializer implements StructuredSerializer<AppWeather> {
  @override
  final Iterable<Type> types = const [AppWeather, _$AppWeather];
  @override
  final String wireName = 'AppWeather';

  @override
  Iterable<Object> serialize(Serializers serializers, AppWeather object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'weather_state_name',
      serializers.serialize(object.weatherStateName,
          specifiedType: const FullType(String)),
      'weather_state_abbr',
      serializers.serialize(object.weatherStateAbbr,
          specifiedType: const FullType(String)),
      'applicable_date',
      serializers.serialize(object.applicableDate,
          specifiedType: const FullType(String)),
      'min_temp',
      serializers.serialize(object.minTemp,
          specifiedType: const FullType(double)),
      'max_temp',
      serializers.serialize(object.maxTemp,
          specifiedType: const FullType(double)),
      'the_temp',
      serializers.serialize(object.theTemp,
          specifiedType: const FullType(double)),
      'humidity',
      serializers.serialize(object.humidity,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  AppWeather deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppWeatherBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'weather_state_name':
          result.weatherStateName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'weather_state_abbr':
          result.weatherStateAbbr = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'applicable_date':
          result.applicableDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'min_temp':
          result.minTemp = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'max_temp':
          result.maxTemp = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'the_temp':
          result.theTemp = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'humidity':
          result.humidity = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$LocationSerializer implements StructuredSerializer<Location> {
  @override
  final Iterable<Type> types = const [Location, _$Location];
  @override
  final String wireName = 'Location';

  @override
  Iterable<Object> serialize(Serializers serializers, Location object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'location_type',
      serializers.serialize(object.locationType,
          specifiedType: const FullType(String)),
      'woeid',
      serializers.serialize(object.woeid, specifiedType: const FullType(int)),
      'latt_long',
      serializers.serialize(object.lattLong,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Location deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LocationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'location_type':
          result.locationType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'woeid':
          result.woeid = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'latt_long':
          result.lattLong = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$WeatherStateSerializer implements StructuredSerializer<WeatherState> {
  @override
  final Iterable<Type> types = const [WeatherState, _$WeatherState];
  @override
  final String wireName = 'WeatherState';

  @override
  Iterable<Object> serialize(Serializers serializers, WeatherState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'forecasts',
      serializers.serialize(object.forecasts,
          specifiedType:
              const FullType(List, const [const FullType(AppWeather)])),
    ];
    if (object.location != null) {
      result
        ..add('location')
        ..add(serializers.serialize(object.location,
            specifiedType: const FullType(Location)));
    }
    return result;
  }

  @override
  WeatherState deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeatherStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'forecasts':
          result.forecasts = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(AppWeather)]))
              as List<AppWeather>;
          break;
        case 'location':
          result.location.replace(serializers.deserialize(value,
              specifiedType: const FullType(Location)) as Location);
          break;
      }
    }

    return result.build();
  }
}

class _$AppWeather extends AppWeather {
  @override
  final String weatherStateName;
  @override
  final String weatherStateAbbr;
  @override
  final String applicableDate;
  @override
  final double minTemp;
  @override
  final double maxTemp;
  @override
  final double theTemp;
  @override
  final double humidity;

  factory _$AppWeather([void Function(AppWeatherBuilder) updates]) =>
      (new AppWeatherBuilder()..update(updates)).build();

  _$AppWeather._(
      {this.weatherStateName,
      this.weatherStateAbbr,
      this.applicableDate,
      this.minTemp,
      this.maxTemp,
      this.theTemp,
      this.humidity})
      : super._() {
    if (weatherStateName == null) {
      throw new BuiltValueNullFieldError('AppWeather', 'weatherStateName');
    }
    if (weatherStateAbbr == null) {
      throw new BuiltValueNullFieldError('AppWeather', 'weatherStateAbbr');
    }
    if (applicableDate == null) {
      throw new BuiltValueNullFieldError('AppWeather', 'applicableDate');
    }
    if (minTemp == null) {
      throw new BuiltValueNullFieldError('AppWeather', 'minTemp');
    }
    if (maxTemp == null) {
      throw new BuiltValueNullFieldError('AppWeather', 'maxTemp');
    }
    if (theTemp == null) {
      throw new BuiltValueNullFieldError('AppWeather', 'theTemp');
    }
    if (humidity == null) {
      throw new BuiltValueNullFieldError('AppWeather', 'humidity');
    }
  }

  @override
  AppWeather rebuild(void Function(AppWeatherBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppWeatherBuilder toBuilder() => new AppWeatherBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppWeather &&
        weatherStateName == other.weatherStateName &&
        weatherStateAbbr == other.weatherStateAbbr &&
        applicableDate == other.applicableDate &&
        minTemp == other.minTemp &&
        maxTemp == other.maxTemp &&
        theTemp == other.theTemp &&
        humidity == other.humidity;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc(0, weatherStateName.hashCode),
                            weatherStateAbbr.hashCode),
                        applicableDate.hashCode),
                    minTemp.hashCode),
                maxTemp.hashCode),
            theTemp.hashCode),
        humidity.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppWeather')
          ..add('weatherStateName', weatherStateName)
          ..add('weatherStateAbbr', weatherStateAbbr)
          ..add('applicableDate', applicableDate)
          ..add('minTemp', minTemp)
          ..add('maxTemp', maxTemp)
          ..add('theTemp', theTemp)
          ..add('humidity', humidity))
        .toString();
  }
}

class AppWeatherBuilder implements Builder<AppWeather, AppWeatherBuilder> {
  _$AppWeather _$v;

  String _weatherStateName;
  String get weatherStateName => _$this._weatherStateName;
  set weatherStateName(String weatherStateName) =>
      _$this._weatherStateName = weatherStateName;

  String _weatherStateAbbr;
  String get weatherStateAbbr => _$this._weatherStateAbbr;
  set weatherStateAbbr(String weatherStateAbbr) =>
      _$this._weatherStateAbbr = weatherStateAbbr;

  String _applicableDate;
  String get applicableDate => _$this._applicableDate;
  set applicableDate(String applicableDate) =>
      _$this._applicableDate = applicableDate;

  double _minTemp;
  double get minTemp => _$this._minTemp;
  set minTemp(double minTemp) => _$this._minTemp = minTemp;

  double _maxTemp;
  double get maxTemp => _$this._maxTemp;
  set maxTemp(double maxTemp) => _$this._maxTemp = maxTemp;

  double _theTemp;
  double get theTemp => _$this._theTemp;
  set theTemp(double theTemp) => _$this._theTemp = theTemp;

  double _humidity;
  double get humidity => _$this._humidity;
  set humidity(double humidity) => _$this._humidity = humidity;

  AppWeatherBuilder();

  AppWeatherBuilder get _$this {
    if (_$v != null) {
      _weatherStateName = _$v.weatherStateName;
      _weatherStateAbbr = _$v.weatherStateAbbr;
      _applicableDate = _$v.applicableDate;
      _minTemp = _$v.minTemp;
      _maxTemp = _$v.maxTemp;
      _theTemp = _$v.theTemp;
      _humidity = _$v.humidity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppWeather other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AppWeather;
  }

  @override
  void update(void Function(AppWeatherBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppWeather build() {
    final _$result = _$v ??
        new _$AppWeather._(
            weatherStateName: weatherStateName,
            weatherStateAbbr: weatherStateAbbr,
            applicableDate: applicableDate,
            minTemp: minTemp,
            maxTemp: maxTemp,
            theTemp: theTemp,
            humidity: humidity);
    replace(_$result);
    return _$result;
  }
}

class _$Location extends Location {
  @override
  final String title;
  @override
  final String locationType;
  @override
  final int woeid;
  @override
  final String lattLong;

  factory _$Location([void Function(LocationBuilder) updates]) =>
      (new LocationBuilder()..update(updates)).build();

  _$Location._({this.title, this.locationType, this.woeid, this.lattLong})
      : super._() {
    if (title == null) {
      throw new BuiltValueNullFieldError('Location', 'title');
    }
    if (locationType == null) {
      throw new BuiltValueNullFieldError('Location', 'locationType');
    }
    if (woeid == null) {
      throw new BuiltValueNullFieldError('Location', 'woeid');
    }
    if (lattLong == null) {
      throw new BuiltValueNullFieldError('Location', 'lattLong');
    }
  }

  @override
  Location rebuild(void Function(LocationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocationBuilder toBuilder() => new LocationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Location &&
        title == other.title &&
        locationType == other.locationType &&
        woeid == other.woeid &&
        lattLong == other.lattLong;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, title.hashCode), locationType.hashCode), woeid.hashCode),
        lattLong.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Location')
          ..add('title', title)
          ..add('locationType', locationType)
          ..add('woeid', woeid)
          ..add('lattLong', lattLong))
        .toString();
  }
}

class LocationBuilder implements Builder<Location, LocationBuilder> {
  _$Location _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _locationType;
  String get locationType => _$this._locationType;
  set locationType(String locationType) => _$this._locationType = locationType;

  int _woeid;
  int get woeid => _$this._woeid;
  set woeid(int woeid) => _$this._woeid = woeid;

  String _lattLong;
  String get lattLong => _$this._lattLong;
  set lattLong(String lattLong) => _$this._lattLong = lattLong;

  LocationBuilder();

  LocationBuilder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _locationType = _$v.locationType;
      _woeid = _$v.woeid;
      _lattLong = _$v.lattLong;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Location other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Location;
  }

  @override
  void update(void Function(LocationBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Location build() {
    final _$result = _$v ??
        new _$Location._(
            title: title,
            locationType: locationType,
            woeid: woeid,
            lattLong: lattLong);
    replace(_$result);
    return _$result;
  }
}

class _$WeatherState extends WeatherState {
  @override
  final List<AppWeather> forecasts;
  @override
  final Location location;

  factory _$WeatherState([void Function(WeatherStateBuilder) updates]) =>
      (new WeatherStateBuilder()..update(updates)).build();

  _$WeatherState._({this.forecasts, this.location}) : super._() {
    if (forecasts == null) {
      throw new BuiltValueNullFieldError('WeatherState', 'forecasts');
    }
  }

  @override
  WeatherState rebuild(void Function(WeatherStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeatherStateBuilder toBuilder() => new WeatherStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeatherState &&
        forecasts == other.forecasts &&
        location == other.location;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, forecasts.hashCode), location.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('WeatherState')
          ..add('forecasts', forecasts)
          ..add('location', location))
        .toString();
  }
}

class WeatherStateBuilder
    implements Builder<WeatherState, WeatherStateBuilder> {
  _$WeatherState _$v;

  List<AppWeather> _forecasts;
  List<AppWeather> get forecasts => _$this._forecasts;
  set forecasts(List<AppWeather> forecasts) => _$this._forecasts = forecasts;

  LocationBuilder _location;
  LocationBuilder get location => _$this._location ??= new LocationBuilder();
  set location(LocationBuilder location) => _$this._location = location;

  WeatherStateBuilder();

  WeatherStateBuilder get _$this {
    if (_$v != null) {
      _forecasts = _$v.forecasts;
      _location = _$v.location?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeatherState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$WeatherState;
  }

  @override
  void update(void Function(WeatherStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$WeatherState build() {
    _$WeatherState _$result;
    try {
      _$result = _$v ??
          new _$WeatherState._(
              forecasts: forecasts, location: _location?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'location';
        _location?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'WeatherState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
