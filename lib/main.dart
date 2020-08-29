import 'package:flutter/material.dart';
import 'package:flutter_fiap_aula_http_mapas/screens/listTrucks.dart';
import 'package:flutter_fiap_aula_http_mapas/screens/mapa.dart';

void main() {
  runApp(MainScreen());
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.deepOrange
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => ListTrucks(),
        '/mapa': (context) => Mapa(),
      },
    );
  }
}
