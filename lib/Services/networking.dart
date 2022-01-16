import 'dart:convert';


import 'package:http/http.dart' as http;
class NetworkHelper {


  // ignore: empty_constructor_bodies
  final String url;
  NetworkHelper(this.url);
  Future  getData() async{
    var link = Uri.parse('$url');
    http.Response response = await http.get(link);
    if(response.statusCode==200 ) {
      String data = response.body;
      var decodedData = jsonDecode(data);

      return decodedData;
    } else
    {
      print(response.statusCode);
    }
  }





  }



