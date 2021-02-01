part of weather_actions;

@freezed
abstract class SearchLocation with _$SearchLocation implements AppAction {
  const factory SearchLocation({@required String query}) = SearchLocation$;

  const factory SearchLocation.successful(Location location) = SearchLocationSuccessful;

  @Implements(ErrorAction)
  const factory SearchLocation.error(Object error) = SearchLocationError;
}
