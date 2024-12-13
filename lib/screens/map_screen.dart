import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class EmbeddedMap extends StatefulWidget {
  const EmbeddedMap({super.key});

  @override
  EmbeddedMapState createState() => EmbeddedMapState();
}

class EmbeddedMapState extends State<EmbeddedMap> {
  late GoogleMapController mapController;

  // List of points with names
  final List<Map<String, dynamic>> points = [
    {"name": "Empire State Building", "lat": 40.748817, "lng": -73.985428},
    {"name": "Hollywood Sign", "lat": 34.052235, "lng": -118.243683},
    {"name": "Golden Gate Bridge", "lat": 37.774929, "lng": -122.419416},
    {"name": "Big Ben", "lat": 51.507351, "lng": -0.127758},
    {"name": "Eiffel Tower", "lat": 48.856613, "lng": 2.352222},
    {"name": "Tokyo Tower", "lat": 35.689487, "lng": 139.691711},
  ];

  Set<Marker> _createMarkers() {
    return points
        .asMap()
        .entries
        .map(
          (entry) => Marker(
            markerId: MarkerId('point_${entry.key}'),
            position: LatLng(entry.value['lat'], entry.value['lng']),
            infoWindow: InfoWindow(title: entry.value['name']),
          ),
        )
        .toSet();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Embedded Google Map')),
      body: GoogleMap(
        onMapCreated: (controller) {
          mapController = controller;
        },
        initialCameraPosition: CameraPosition(
          target: LatLng(points[0]['lat'], points[0]['lng']),
          zoom: 3,
        ),
        markers: _createMarkers(),
      ),
    );
  }
}
