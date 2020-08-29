import 'package:flutter/material.dart';
import 'package:flutter_fiap_aula_http_mapas/model/position.dart';
import 'package:geolocator/geolocator.dart' as Geolocator;

class ListItemVehicle extends StatefulWidget {
  final Position position;

  ListItemVehicle(this.position);

  @override
  _ListItemVehicleState createState() => _ListItemVehicleState();
}
