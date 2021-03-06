part of 'weather_bloc.dart';

abstract class WeatherEvent extends Equatable {
  const WeatherEvent();
}

class GetWeather extends WeatherEvent {
  final String cityName;

  const GetWeather({this.cityName});

  @override
  List<Object> get props => [cityName];
}

class GetWeatherDetail extends WeatherEvent {
  final String cityName;

  const GetWeatherDetail({this.cityName});

  @override
  List<Object> get props => [cityName];
}
