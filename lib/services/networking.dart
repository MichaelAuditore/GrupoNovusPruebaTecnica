import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

//Class Networking represents all Future methods who requires an http method
class Networking {
  //Get data from an specific API in format JSON, converts and returns the data
  Future getData() async {
    var data;
    String url =
        'https://apiprueba.gopass.com.co/establishment/getAllEstablishment';
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      var decodeData = convert.jsonDecode(response.body);
      data = decodeData['data'];
    } else {
      print(response.statusCode);
    }
    return data;
  }
}
