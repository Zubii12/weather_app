// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of weather_actions;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SearchLocationTearOff {
  const _$SearchLocationTearOff();

// ignore: unused_element
  SearchLocation$ call({@required String query}) {
    return SearchLocation$(
      query: query,
    );
  }

// ignore: unused_element
  SearchLocationSuccessful successful(Location location) {
    return SearchLocationSuccessful(
      location,
    );
  }

// ignore: unused_element
  SearchLocationError error(Object error) {
    return SearchLocationError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SearchLocation = _$SearchLocationTearOff();

/// @nodoc
mixin _$SearchLocation {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String query), {
    @required Result successful(Location location),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String query), {
    Result successful(Location location),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SearchLocation$ value), {
    @required Result successful(SearchLocationSuccessful value),
    @required Result error(SearchLocationError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SearchLocation$ value), {
    Result successful(SearchLocationSuccessful value),
    Result error(SearchLocationError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $SearchLocationCopyWith<$Res> {
  factory $SearchLocationCopyWith(
          SearchLocation value, $Res Function(SearchLocation) then) =
      _$SearchLocationCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchLocationCopyWithImpl<$Res>
    implements $SearchLocationCopyWith<$Res> {
  _$SearchLocationCopyWithImpl(this._value, this._then);

  final SearchLocation _value;
  // ignore: unused_field
  final $Res Function(SearchLocation) _then;
}

/// @nodoc
abstract class $SearchLocation$CopyWith<$Res> {
  factory $SearchLocation$CopyWith(
          SearchLocation$ value, $Res Function(SearchLocation$) then) =
      _$SearchLocation$CopyWithImpl<$Res>;
  $Res call({String query});
}

/// @nodoc
class _$SearchLocation$CopyWithImpl<$Res>
    extends _$SearchLocationCopyWithImpl<$Res>
    implements $SearchLocation$CopyWith<$Res> {
  _$SearchLocation$CopyWithImpl(
      SearchLocation$ _value, $Res Function(SearchLocation$) _then)
      : super(_value, (v) => _then(v as SearchLocation$));

  @override
  SearchLocation$ get _value => super._value as SearchLocation$;

  @override
  $Res call({
    Object query = freezed,
  }) {
    return _then(SearchLocation$(
      query: query == freezed ? _value.query : query as String,
    ));
  }
}

/// @nodoc
class _$SearchLocation$ implements SearchLocation$ {
  const _$SearchLocation$({@required this.query}) : assert(query != null);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchLocation(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchLocation$ &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(query);

  @override
  $SearchLocation$CopyWith<SearchLocation$> get copyWith =>
      _$SearchLocation$CopyWithImpl<SearchLocation$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String query), {
    @required Result successful(Location location),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(query);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String query), {
    Result successful(Location location),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SearchLocation$ value), {
    @required Result successful(SearchLocationSuccessful value),
    @required Result error(SearchLocationError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SearchLocation$ value), {
    Result successful(SearchLocationSuccessful value),
    Result error(SearchLocationError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class SearchLocation$ implements SearchLocation {
  const factory SearchLocation$({@required String query}) = _$SearchLocation$;

  String get query;
  $SearchLocation$CopyWith<SearchLocation$> get copyWith;
}

/// @nodoc
abstract class $SearchLocationSuccessfulCopyWith<$Res> {
  factory $SearchLocationSuccessfulCopyWith(SearchLocationSuccessful value,
          $Res Function(SearchLocationSuccessful) then) =
      _$SearchLocationSuccessfulCopyWithImpl<$Res>;
  $Res call({Location location});
}

/// @nodoc
class _$SearchLocationSuccessfulCopyWithImpl<$Res>
    extends _$SearchLocationCopyWithImpl<$Res>
    implements $SearchLocationSuccessfulCopyWith<$Res> {
  _$SearchLocationSuccessfulCopyWithImpl(SearchLocationSuccessful _value,
      $Res Function(SearchLocationSuccessful) _then)
      : super(_value, (v) => _then(v as SearchLocationSuccessful));

  @override
  SearchLocationSuccessful get _value =>
      super._value as SearchLocationSuccessful;

  @override
  $Res call({
    Object location = freezed,
  }) {
    return _then(SearchLocationSuccessful(
      location == freezed ? _value.location : location as Location,
    ));
  }
}

/// @nodoc
class _$SearchLocationSuccessful implements SearchLocationSuccessful {
  const _$SearchLocationSuccessful(this.location) : assert(location != null);

  @override
  final Location location;

  @override
  String toString() {
    return 'SearchLocation.successful(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchLocationSuccessful &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(location);

  @override
  $SearchLocationSuccessfulCopyWith<SearchLocationSuccessful> get copyWith =>
      _$SearchLocationSuccessfulCopyWithImpl<SearchLocationSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String query), {
    @required Result successful(Location location),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(location);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String query), {
    Result successful(Location location),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SearchLocation$ value), {
    @required Result successful(SearchLocationSuccessful value),
    @required Result error(SearchLocationError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SearchLocation$ value), {
    Result successful(SearchLocationSuccessful value),
    Result error(SearchLocationError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class SearchLocationSuccessful implements SearchLocation {
  const factory SearchLocationSuccessful(Location location) =
      _$SearchLocationSuccessful;

  Location get location;
  $SearchLocationSuccessfulCopyWith<SearchLocationSuccessful> get copyWith;
}

/// @nodoc
abstract class $SearchLocationErrorCopyWith<$Res> {
  factory $SearchLocationErrorCopyWith(
          SearchLocationError value, $Res Function(SearchLocationError) then) =
      _$SearchLocationErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$SearchLocationErrorCopyWithImpl<$Res>
    extends _$SearchLocationCopyWithImpl<$Res>
    implements $SearchLocationErrorCopyWith<$Res> {
  _$SearchLocationErrorCopyWithImpl(
      SearchLocationError _value, $Res Function(SearchLocationError) _then)
      : super(_value, (v) => _then(v as SearchLocationError));

  @override
  SearchLocationError get _value => super._value as SearchLocationError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(SearchLocationError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$SearchLocationError implements SearchLocationError {
  const _$SearchLocationError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'SearchLocation.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchLocationError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $SearchLocationErrorCopyWith<SearchLocationError> get copyWith =>
      _$SearchLocationErrorCopyWithImpl<SearchLocationError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String query), {
    @required Result successful(Location location),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String query), {
    Result successful(Location location),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SearchLocation$ value), {
    @required Result successful(SearchLocationSuccessful value),
    @required Result error(SearchLocationError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SearchLocation$ value), {
    Result successful(SearchLocationSuccessful value),
    Result error(SearchLocationError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SearchLocationError implements SearchLocation, ErrorAction {
  const factory SearchLocationError(Object error) = _$SearchLocationError;

  Object get error;
  $SearchLocationErrorCopyWith<SearchLocationError> get copyWith;
}

/// @nodoc
class _$GetWeatherTearOff {
  const _$GetWeatherTearOff();

// ignore: unused_element
  GetWeather$ call(String woeid) {
    return GetWeather$(
      woeid,
    );
  }

// ignore: unused_element
  GetWeatherSuccessful successful(List<AppWeather> forecasts) {
    return GetWeatherSuccessful(
      forecasts,
    );
  }

// ignore: unused_element
  GetWeatherError error(Object error) {
    return GetWeatherError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GetWeather = _$GetWeatherTearOff();

/// @nodoc
mixin _$GetWeather {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String woeid), {
    @required Result successful(List<AppWeather> forecasts),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String woeid), {
    Result successful(List<AppWeather> forecasts),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetWeather$ value), {
    @required Result successful(GetWeatherSuccessful value),
    @required Result error(GetWeatherError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetWeather$ value), {
    Result successful(GetWeatherSuccessful value),
    Result error(GetWeatherError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $GetWeatherCopyWith<$Res> {
  factory $GetWeatherCopyWith(
          GetWeather value, $Res Function(GetWeather) then) =
      _$GetWeatherCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetWeatherCopyWithImpl<$Res> implements $GetWeatherCopyWith<$Res> {
  _$GetWeatherCopyWithImpl(this._value, this._then);

  final GetWeather _value;
  // ignore: unused_field
  final $Res Function(GetWeather) _then;
}

/// @nodoc
abstract class $GetWeather$CopyWith<$Res> {
  factory $GetWeather$CopyWith(
          GetWeather$ value, $Res Function(GetWeather$) then) =
      _$GetWeather$CopyWithImpl<$Res>;
  $Res call({String woeid});
}

/// @nodoc
class _$GetWeather$CopyWithImpl<$Res> extends _$GetWeatherCopyWithImpl<$Res>
    implements $GetWeather$CopyWith<$Res> {
  _$GetWeather$CopyWithImpl(
      GetWeather$ _value, $Res Function(GetWeather$) _then)
      : super(_value, (v) => _then(v as GetWeather$));

  @override
  GetWeather$ get _value => super._value as GetWeather$;

  @override
  $Res call({
    Object woeid = freezed,
  }) {
    return _then(GetWeather$(
      woeid == freezed ? _value.woeid : woeid as String,
    ));
  }
}

/// @nodoc
class _$GetWeather$ implements GetWeather$ {
  const _$GetWeather$(this.woeid) : assert(woeid != null);

  @override
  final String woeid;

  @override
  String toString() {
    return 'GetWeather(woeid: $woeid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetWeather$ &&
            (identical(other.woeid, woeid) ||
                const DeepCollectionEquality().equals(other.woeid, woeid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(woeid);

  @override
  $GetWeather$CopyWith<GetWeather$> get copyWith =>
      _$GetWeather$CopyWithImpl<GetWeather$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String woeid), {
    @required Result successful(List<AppWeather> forecasts),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(woeid);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String woeid), {
    Result successful(List<AppWeather> forecasts),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(woeid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetWeather$ value), {
    @required Result successful(GetWeatherSuccessful value),
    @required Result error(GetWeatherError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetWeather$ value), {
    Result successful(GetWeatherSuccessful value),
    Result error(GetWeatherError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetWeather$ implements GetWeather {
  const factory GetWeather$(String woeid) = _$GetWeather$;

  String get woeid;
  $GetWeather$CopyWith<GetWeather$> get copyWith;
}

/// @nodoc
abstract class $GetWeatherSuccessfulCopyWith<$Res> {
  factory $GetWeatherSuccessfulCopyWith(GetWeatherSuccessful value,
          $Res Function(GetWeatherSuccessful) then) =
      _$GetWeatherSuccessfulCopyWithImpl<$Res>;
  $Res call({List<AppWeather> forecasts});
}

/// @nodoc
class _$GetWeatherSuccessfulCopyWithImpl<$Res>
    extends _$GetWeatherCopyWithImpl<$Res>
    implements $GetWeatherSuccessfulCopyWith<$Res> {
  _$GetWeatherSuccessfulCopyWithImpl(
      GetWeatherSuccessful _value, $Res Function(GetWeatherSuccessful) _then)
      : super(_value, (v) => _then(v as GetWeatherSuccessful));

  @override
  GetWeatherSuccessful get _value => super._value as GetWeatherSuccessful;

  @override
  $Res call({
    Object forecasts = freezed,
  }) {
    return _then(GetWeatherSuccessful(
      forecasts == freezed ? _value.forecasts : forecasts as List<AppWeather>,
    ));
  }
}

/// @nodoc
class _$GetWeatherSuccessful implements GetWeatherSuccessful {
  const _$GetWeatherSuccessful(this.forecasts) : assert(forecasts != null);

  @override
  final List<AppWeather> forecasts;

  @override
  String toString() {
    return 'GetWeather.successful(forecasts: $forecasts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetWeatherSuccessful &&
            (identical(other.forecasts, forecasts) ||
                const DeepCollectionEquality()
                    .equals(other.forecasts, forecasts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(forecasts);

  @override
  $GetWeatherSuccessfulCopyWith<GetWeatherSuccessful> get copyWith =>
      _$GetWeatherSuccessfulCopyWithImpl<GetWeatherSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String woeid), {
    @required Result successful(List<AppWeather> forecasts),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(forecasts);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String woeid), {
    Result successful(List<AppWeather> forecasts),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(forecasts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetWeather$ value), {
    @required Result successful(GetWeatherSuccessful value),
    @required Result error(GetWeatherError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetWeather$ value), {
    Result successful(GetWeatherSuccessful value),
    Result error(GetWeatherError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetWeatherSuccessful implements GetWeather {
  const factory GetWeatherSuccessful(List<AppWeather> forecasts) =
      _$GetWeatherSuccessful;

  List<AppWeather> get forecasts;
  $GetWeatherSuccessfulCopyWith<GetWeatherSuccessful> get copyWith;
}

/// @nodoc
abstract class $GetWeatherErrorCopyWith<$Res> {
  factory $GetWeatherErrorCopyWith(
          GetWeatherError value, $Res Function(GetWeatherError) then) =
      _$GetWeatherErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$GetWeatherErrorCopyWithImpl<$Res> extends _$GetWeatherCopyWithImpl<$Res>
    implements $GetWeatherErrorCopyWith<$Res> {
  _$GetWeatherErrorCopyWithImpl(
      GetWeatherError _value, $Res Function(GetWeatherError) _then)
      : super(_value, (v) => _then(v as GetWeatherError));

  @override
  GetWeatherError get _value => super._value as GetWeatherError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(GetWeatherError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$GetWeatherError implements GetWeatherError {
  const _$GetWeatherError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'GetWeather.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetWeatherError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $GetWeatherErrorCopyWith<GetWeatherError> get copyWith =>
      _$GetWeatherErrorCopyWithImpl<GetWeatherError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String woeid), {
    @required Result successful(List<AppWeather> forecasts),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String woeid), {
    Result successful(List<AppWeather> forecasts),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetWeather$ value), {
    @required Result successful(GetWeatherSuccessful value),
    @required Result error(GetWeatherError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetWeather$ value), {
    Result successful(GetWeatherSuccessful value),
    Result error(GetWeatherError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetWeatherError implements GetWeather, ErrorAction {
  const factory GetWeatherError(Object error) = _$GetWeatherError;

  Object get error;
  $GetWeatherErrorCopyWith<GetWeatherError> get copyWith;
}
