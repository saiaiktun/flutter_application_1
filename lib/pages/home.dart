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
      appBar: const CustomAppBar(),
      drawer: const CustomDrawer(),
      // appBar: AppBar(
      //   title: const Text('Frist App !'),
      //   centerTitle: true,
      //   backgroundColor: Colors.amber,
      // ),
      // body: Center(
        // child: Text(
        //   'Hello! Welcome!',
        //   style: TextStyle(
        //     fontSize: 20,
        //     fontWeight: FontWeight.bold,
        //     letterSpacing: 2,
        //     color: Colors.green
        //   ),
        // ),
        // child: Image(
        //   // image: NetworkImage('https://cdn.pixabay.com/photo/2023/05/27/22/56/kitten-8022452_1280.jpg')
        //   image: AssetImage('assets/img/kitten.png'),
        // ),
        // child: Image.asset('assets/img/kitten.png'),
        // child: Icon(
        //   Icons.airport_shuttle,
        //   color: Colors.lightBlue,
        //   size: 50,
        // ),
      //   child: IconButton(
      //     icon: const Icon(
      //       Icons.alternate_email,
      //       color: Colors.blue,
      //     ),
      //     onPressed: () {

      //     },
      //   )
      // ),
      // body: Container(
      //   padding: EdgeInsets.fromLTRB(5, 10, 15, 20),
      //   margin: EdgeInsets.all(30),
      //   color: Colors.grey,
      //   child: Text('Heelo'),
      // ),
      // body: Row(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   children: [
      //     Text('Hello!'),
      //     Container(
      //       padding: EdgeInsets.fromLTRB(5, 10, 15, 20),
      //       margin: EdgeInsets.all(30),
      //       color: Colors.grey,
      //       child: Text('Heelo'),
      //     ),
      //   ],
      // ),
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