import 'package:geolocator/geolocator.dart';


class Location
{
   late double latitude;
   late double longitude;
  Future<void> getcurrentlocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.best);
      latitude= position.latitude;
      longitude=position.longitude;


    }
    catch(e ){
      print(e);
    }
  }


}