import 'package:geolocator/geolocator.dart';

class Locator {
  double latitude = 12;
  double longitude = 10;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      LocationPermission permission = await Geolocator.requestPermission();

      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
