import 'package:flutter/material.dart';
import '../widgets/app_bar.dart';
import '../widgets/drawer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int counter = 1;

  void changeImage() {
    setState(() {
      counter = counter == 1 ? 2 : 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: const CustomAppBar(),
      drawer: const CustomDrawer(),
      body: counter == 1
          ? Image.asset('assets/img/dog.png') 
          : Image.asset('assets/img/kitten.png'),
      floatingActionButton: FloatingActionButton(
        onPressed: changeImage,
        backgroundColor: Colors.blue,
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
