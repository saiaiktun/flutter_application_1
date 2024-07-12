import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/bmi_cal.dart';
import 'pages/map.dart';
import 'pages/about.dart';


void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/home': (context) => const Home(),
      '/bmi_cal': (context) => const BmiCal(),
      '/map': (context) => const Map(),
      '/about': (context) => const About(),
    },
  ));
}
