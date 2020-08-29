import 'package:flutter/material.dart';
import 'package:flutter_fiap_aula_http_mapas/model/listPositions.dart';
import 'package:flutter_fiap_aula_http_mapas/model/position.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Mapa extends StatefulWidget {
  @override
  _MapaState createState() => _MapaState();
}

class _MapaState extends State<Mapa> {
  Map<MarkerId, Marker> markers = <MarkerId, Marker>{}; // CLASS MEMBER, MAP OF MARKS

  Position position;
  ListPositions listPositions;

  CameraPosition _position;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (ModalRoute.of(context).settings.arguments is Position){
      position = ModalRoute.of(context).settings.arguments;
    } else {
      listPositions = ModalRoute.of(context).settings.arguments;
    }

    if (position != null) {
      _position = CameraPosition(
        target: LatLng(position.lat, position.lng),
        zoom: 14.4746,//2 21 - todo um cálculo
      );
    } else {
      _position = CameraPosition(
        target: LatLng(listPositions.positions[0].lat, listPositions.positions[0].lng),
        zoom: 18.4746,
      );
    }

    return new Scaffold(
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: _position,
        onMapCreated: _onMapCreated,
        markers: Set<Marker>.of(markers.values),//poi = point of interest
      ),
    );
  }

}

