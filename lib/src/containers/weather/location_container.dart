part of weather_containers;

class LocationContainer extends StatelessWidget {
  const LocationContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<Location> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Location>(
      converter: (Store<AppState> store) => store.state.weather.location,
      builder: builder,
    );
  }
}
