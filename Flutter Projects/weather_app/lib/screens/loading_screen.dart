import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weatherapp/screens/location_screen.dart';
import 'package:weatherapp/services/location.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:weatherapp/services/networking.dart';
import 'package:weatherapp/services/weather.dart';



class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
double par1;
double par2;
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    grabCurrentLocationData();
  }
void grabCurrentLocationData() async{
  WeatherModel wm=WeatherModel();
var weatherData=await wm.getWeatherLocation();

  Navigator.push(context, MaterialPageRoute(builder: (context){return LocationScreen(locWeather: weatherData,);
  }));
  print(par1);
  print(par2);
  //getDataFromLAtAndLong();
}

void getDataFromLAtAndLong() async {
  //print("I am inside async");
http.Response r=  await http.get('https://api.openweathermap.org/data/2.5/weather?lat=$par1&lon=$par2&appid=$apiKey');
if(r.statusCode==200){
print(r.body);
String data= r.body;
var decodeData=jsonDecode(data);

double temp=decodeData['main']['temp'];
String city=decodeData['name'];
int condition=decodeData['weather'][0]['id'];
//var w=jsonDecode(data)['weather'][0]['main'];
print(temp);
print(condition);
print(city);


}else{
print(r.statusCode);}

Navigator.push(context, MaterialPageRoute(builder: (context){return LocationScreen();
}));
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitChasingDots(
          color: Colors.white,
          size: 100.0,
        ),
      ),
    );

  }
}
