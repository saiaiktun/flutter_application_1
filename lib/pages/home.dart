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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: const CustomAppBar(),
      drawer: const CustomDrawer(),
      body: Image.asset('assets/img/dog.png'),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            Navigator.pushNamed(context, '/about');
          });
        },
        backgroundColor: Colors.cyan,
        child: const Icon(Icons.info),
      ),
    );
  }
}