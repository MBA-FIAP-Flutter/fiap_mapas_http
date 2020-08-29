import 'package:flutter/material.dart';
import 'package:flutter_fiap_aula_http_mapas/model/listPositions.dart';
import 'package:flutter_fiap_aula_http_mapas/model/position.dart';
import 'package:flutter_fiap_aula_http_mapas/service/endpoints.dart';

class ListTrucks extends StatefulWidget {
  @override
  _ListTrucksState createState() => _ListTrucksState();
}

class _ListTrucksState extends State<ListTrucks> {

  ListPositions listPositions;

  @override
  void initState() {
    super.initState();

    getPositions().then((c) {
      setState(() {
        listPositions = c;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    …
  }

  Widget buildListItem(Position position){
    return ListItemVehicle(position);
  }


}
