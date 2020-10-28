import 'package:weatherapp/screens/loading_screen.dart';
import 'location.dart';
import 'networking.dart';

const apiKey='0b348a8ea0dfdf16af247472928b6553';
const apiURL='https://api.openweathermap.org/data/2.5/weather';
class WeatherModel {
  Future<dynamic> getLocation(String city) async{
    Location l=Location();
    await l.grabLocation();
//    par1=l.latti;
  //  par2=l.longi;
    NetworkingServices networkServices=NetworkingServices('$apiURL?q=$city&appid=$apiKey&units=metric');

    var getData=await networkServices.getData();
    return getData;
  }
  Future<dynamic> getWeatherLocation() async {
    Location l=Location();
    await l.grabLocation();

    NetworkingServices networkServices=NetworkingServices('$apiURL?lat=${l.latti}&lon=${l.longi}&appid=$apiKey&units=metric');

    var getData=await networkServices.getData();
    return getData;
  }
  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
