import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:youtube/api.dart';
import 'package:youtube/blocks/favorite_bloc.dart';
import 'package:youtube/blocks/videos_block.dart';
import 'package:youtube/screens/home.dart';

void main(){

  Api api = Api();
  api.search("eletro");

 runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      bloc: VideosBloc(),
      child: BlocProvider(
        bloc: FavoriteBloc(),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'FlutterTube',
            home: Home(),
          ),
      ),
    );
  }
}
