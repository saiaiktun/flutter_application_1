import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import '../widgets/app_bar.dart';
import '../widgets/drawer.dart';

class Map extends StatefulWidget {
  const Map({super.key});

  @override
  State<Map> createState() => _LocationPageState();
}

class _LocationPageState extends State<Map> {
  Position? _currentPosition;

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  }

  void _getCurrentLocation() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.deniedForever) {
      _showPermissionDeniedDialog();
      return;
    }
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission != LocationPermission.whileInUse && permission != LocationPermission.always) {
        _showPermissionDeniedDialog();
        return;
      }
    }

    try {
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      setState(() {
        _currentPosition = position;
      });
    } catch (e) {
      print('Error: ${e.toString()}');
    }
  }

  void _showPermissionDeniedDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('Location Permission'),
        content: const Text('Please grant access to your location to use this feature.'),
        actions: <Widget>[
          TextButton(
            child: const Text('OK'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: const CustomAppBar(),
      drawer: const CustomDrawer(),
      body: Center(
        child: _currentPosition == null
            ? const CircularProgressIndicator()
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Latitude: ${_currentPosition!.latitude}',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.red[600]
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Longitude: ${_currentPosition!.longitude}',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.red[600]
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
