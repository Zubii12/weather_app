part of weather_containers;

class ForecastsContainer extends StatelessWidget {
  const ForecastsContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<List<AppWeather>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<AppWeather>>(
      converter: (Store<AppState> store) => store.state.weather.forecasts,
      builder: builder,
    );
  }
}
