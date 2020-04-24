import 'package:flutter/material.dart';
import 'package:youtube/api.dart';
import 'package:youtube/screens/home.dart';

void main(){

  Api api = Api();
  api.search("eletro");

 runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FlutterTube',
      home: Home(),
    );
  }
}
