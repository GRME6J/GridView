import 'package:flutter/material.dart';
import 'package:garcia/gridwiewemoleados.dart';

void main() {
  runApp(UberApp());
}

class UberApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Aprendiendo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: PaginaInicial());
  }
}

class PaginaInicial extends StatefulWidget {
  PaginaInicial({Key? key}) : super(key: key);
  @override
  _PaginaInicialState createState() => _PaginaInicialState();
}

class _PaginaInicialState extends State<PaginaInicial> {
  List<String> images = [
    "assets/images/gps-uber.jpg",
    "assets/images/taxi.jpg",
    "assets/images/gps-uber.jpg",
    "assets/images/taxi.jpg",
    "assets/images/gps-uber.jpg",
    "assets/images/taxi.jpg",
    "assets/images/tarifas-uber.jpg",
    "assets/images/uber.jpg",
    "assets/images/unnamed.png",
    "assets/images/descarga.png",
    "assets/images/gps-uber.jpg",
    "assets/images/taxi.jpg",
    "assets/images/gps-uber.jpg",
    "assets/images/taxi.jpg",
    "assets/images/gps-uber.jpg",
    "assets/images/taxi.jpg",
    "assets/images/tarifas-uber.jpg",
    "assets/images/uber.jpg",
    "assets/images/unnamed.png",
    "assets/images/descarga.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter GridView"),
        ),
        body: GridView.builder(
          itemCount: images.length,
          itemBuilder: (BuildContext context, int index) {
            return Image.asset(images[index], fit: BoxFit.cover);
          },
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 10),
          padding: EdgeInsets.all(10),
          shrinkWrap: true,
        ));
  }
}
