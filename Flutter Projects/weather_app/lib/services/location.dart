import 'package:geolocator/geolocator.dart';

class Location{
  double latti,longi;
  Future<void> grabLocation() async{
    try {
      Position position = await getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      latti=position.latitude;
      longi=position.longitude;
    }
    catch(e){
      print(e);
      //print("Error");
    }
  }
}