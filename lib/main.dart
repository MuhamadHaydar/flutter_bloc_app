import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_app/data/weather_repository.dart';
import 'package:flutter_bloc_app/weather_bloc.dart';

import 'pages/weather_search_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      builder: (context) => WeatherBloc(FakeWeatherRepository()),
      child: MaterialApp(
        title: 'Weather App',
        home: WeatherSearchPage(),
      ),
    );
  }
}
