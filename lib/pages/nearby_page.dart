import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:login_app/component/tool_bar.dart';

class NearbyPage extends StatelessWidget {
  const NearbyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ToolBar(title: "Near by"),
      body: FlutterMap(
        options: const MapOptions(
          initialCenter: LatLng(19.2813, 73.0483),
          minZoom: 10,
          maxZoom: 100,
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'dev.fleaflet.flutter_map.example',
            // Plenty of other options available!
          ),
          MarkerLayer(markers: [
            Marker(
                width: 100,
                height: 50,
                point: const LatLng(19.2813, 73.0483),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 3,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)),
                      child: const Text(
                        "Username",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.location_on_rounded,
                      color: Colors.black,
                    )
                  ],
                ))
          ])
        ],
      ),
    );
  }
}
