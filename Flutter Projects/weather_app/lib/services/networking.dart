import 'package:http/http.dart' as http;
import 'dart:convert';
class NetworkingServices {
  NetworkingServices(this.dataAndLocation);

  final String dataAndLocation;

  Future getData() async {
    http.Response r = await http.get(dataAndLocation);

    if (r.statusCode == 200) {
      print(r.body);
      String data = r.body;
      return jsonDecode(data);
    } else {
      print(r.statusCode);
    }
  }
}