


import 'package:flutter/material.dart';
import 'package:flutter_app_weather/Services/weather.dart';
import 'location_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

const apikey = '106f71c36336046679bd7a620d67e507';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

 class  _LoadingScreenState extends State<LoadingScreen> {
  late double lat;
  late double long;
  @override
  void initState() {
    super.initState();
    getLocation();

  }
    void getLocation() async {
      var weatherData = await WeatherModel().getLocationWeather();

      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return LocationScreen(
          locationWeather: weatherData,
        );
      }));
    }
// NetworkHelper helper = NetworkHelper('api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$long&appid=$apikey');



   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: Center(
         child: SpinKitDoubleBounce(
           color: Colors.white,
           size: 100.0,
         ),
       ),
     );
   }
 }



