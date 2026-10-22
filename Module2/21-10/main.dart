import 'package:flutter/material.dart';
import 'package:stateex1/stful.dart';
import 'package:stateex1/stless.dart';
import 'package:stateex1/web11.dart';

void main() {
  runApp(MaterialApp(home: TopsTech(),
    initialRoute: '/',
    routes:
    {
      '/': (context) =>  MyApp(),
      '/details': (context) =>  MyApp2(),
    },));
}
