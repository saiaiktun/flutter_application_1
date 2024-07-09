import 'package:flutter/material.dart';
import '../widgets/app_bar.dart';
import '../widgets/drawer.dart';


class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: const CustomAppBar(),
      drawer: const CustomDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            const Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
              ),
            ),
            Text(
              'Aik Tun',
              style: TextStyle(
                color: Colors.amber[400],
                letterSpacing: 2,
              ),
            )
          ],
        ),
      )
    );
  }
}