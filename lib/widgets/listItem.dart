import 'package:flutter/material.dart';
import 'package:flutter_fiap_aula_http_mapas/model/position.dart';
import 'package:geolocator/geolocator.dart' as Geolocator;

class ListItemVehicle extends StatefulWidget {
  final Position position;

  ListItemVehicle(this.position);

  @override
  _ListItemVehicleState createState() => _ListItemVehicleState();
}

class _ListItemVehicleState extends State<ListItemVehicle> {

  TextStyle style15dp = TextStyle(fontSize: 15);
  TextStyle style27dp = TextStyle(fontSize: 27);
  Geolocator.Placemark placemark;

  @override
  void initState() {
    super.initState();
    getAddress();
  }

  getAddress() async {
    List<Geolocator.Placemark> listPlacemarks =
    await Geolocator.Geolocator()
        .placemarkFromCoordinates(
          widget.position.lat,
          widget.position.lng);

    //for class pattern
    setState(() {
      placemark = listPlacemarks[0];
    });
  }

  @override
  Widget build(BuildContext context) { }

}

