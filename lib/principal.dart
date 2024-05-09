import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class  Principal extends StatefulWidget {
  const Principal ({Key? key}) : super(key: key);

  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'MAPS DA BIA',
          style: TextStyle(
            fontFamily: AutofillHints.photo,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.pink.shade200,
      ),
      body: Stack(
        children: [
          FlutterMap
            (
            options: MapOptions(center: LatLng(-07.3209, -73.5926), zoom: 3),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.example.app',
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(	-07.3209, -73.5926),
                    builder: (ctx) => Container(
                      child: Icon(Icons.accessibility_new_sharp, color: Colors.red.shade900,),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
