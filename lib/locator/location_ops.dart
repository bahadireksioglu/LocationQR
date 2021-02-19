import 'package:geolocator/geolocator.dart';
import 'package:url_launcher/url_launcher.dart';

class GetLocationLink{
  String latitude;
  String longitude;
  String googleMapsSearchUrl;
  void getGoogleMapsUrl() async {
    var position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    var lati = position.latitude;
    var long = position.longitude;

    latitude = "$lati";
    longitude= "$long";

    googleMapsSearchUrl =
    "geo:$latitude,$longitude?q=$latitude,$longitude";
  }

  String returnUrl(){
    getGoogleMapsUrl();
    return googleMapsSearchUrl;
  }
  void runGoogleMapsByUrl(String url) async {
    if(await canLaunch(url)){
      await launch(url);
    }
    else{
      throw "This link is not open on google maps";
    }
  }
}