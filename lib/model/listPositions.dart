import 'package:flutter_fiap_aula_http_mapas/model/position.dart';

class ListPositions {

  List<Position> positions;

  ListPositions({
    this.positions
  });

  ListPositions.fromJson(Map<String, dynamic> json) //operador ternário
      : positions = json['data'] == null ? null : buildListPositions(json['data']);

  static List<Position> buildListPositions(List<dynamic> list) {
    return list.map((item) => Position.fromJson(item)).toList();
  }

}