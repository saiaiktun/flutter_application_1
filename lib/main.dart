import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/about.dart';


void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/home': (context) => const Home(),
      '/about': (context) => const About(),
    },
  ));
}
