import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:weather_app/src/actions/index.dart';
import 'package:weather_app/src/containers/index.dart';
import 'package:weather_app/src/models/index.dart';
import 'package:weather_app/src/models/weather/index.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _controller = TextEditingController();

  bool isCelsius = true;
  String currentConvert = 'celsius';

  ///(50°F - 32) x .5556 = 10°C
  ///(30°C x 1.8) + 32 = 86°F
  int convert({String from, String to, int value}) {
    if (from == 'celsius' && to == 'fahrenheit') {
      return (value * 1.8 + 32).toInt();
    } else if (from == 'fahrenheit' && to == 'celsius') {
      return ((value - 32) * .5556).toInt();
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    print(isCelsius);
    print(currentConvert);
    return ForecastsContainer(
      builder: (BuildContext context, List<AppWeather> forecasts) {
        return LocationContainer(
          builder: (BuildContext context, Location location) {
            return SafeArea(
              child: Scaffold(
                appBar: AppBar(
                  title: const Text('Weather'),
                  centerTitle: true,
                  actions: <Widget>[
                    IconButton(
                        icon: const Icon(Icons.refresh_outlined),
                        onPressed: () {
                          StoreProvider.of<AppState>(context).dispatch(SearchLocation(query: _controller.text));
                        })
                  ],
                ),
                body: Column(
                  children: <Widget>[
                    const SizedBox(height: 24),
                    Flexible(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: forecasts.length,
                        itemBuilder: (BuildContext context, int index) {
                          final AppWeather weather = forecasts[index];
                          return Container(
                            child: Column(
                              children: <Widget>[
                                Text('${weather.applicableDate}'),
                                Image.network(
                                  'https://www.metaweather.com/static/img/weather/png/${weather.weatherStateAbbr}.png',
                                  height: 24,
                                  width: 24,
                                  fit: BoxFit.fill,
                                ),
                                Text(currentConvert == 'celsius'
                                    ? weather.theTemp.toInt().toString() + ' \u2103'
                                    : convert(from: 'celsius', to: 'fahrenheit', value: weather.theTemp.toInt())
                                            .toString() +
                                        ' \u2109'),
                                Row(
                                  children: <Widget>[
                                    Text(currentConvert == 'celsius'
                                        ? weather.minTemp.toInt().toString()
                                        : convert(from: 'celsius', to: 'fahrenheit', value: weather.minTemp.toInt())
                                            .toString()),
                                    const Text(' - '),
                                    Text(currentConvert == 'celsius'
                                        ? weather.maxTemp.toInt().toString()
                                        : convert(from: 'celsius', to: 'fahrenheit', value: weather.maxTemp.toInt())
                                            .toString()),
                                  ],
                                ),
                                const Divider(
                                  indent: 80,
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    InkWell(
                      child: Text(
                        currentConvert,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          if (isCelsius) {
                            currentConvert = 'celsius';
                            isCelsius = !isCelsius;
                          } else {
                            currentConvert = 'fahrenheit';
                            isCelsius = !isCelsius;
                          }
                        });
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextFormField(
                        controller: _controller,
                        decoration: const InputDecoration(
                          hintText: 'Search something...',
                        ),
                      ),
                    ),
                    FlatButton(
                      onPressed: () {
                        StoreProvider.of<AppState>(context).dispatch(SearchLocation(query: _controller.text));
                      },
                      child: const Text('Search'),
                      color: Colors.blueAccent,
                    ),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
