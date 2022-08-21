import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:zeping_virtual_band/pages/band/controller.dart';

class BandPage extends GetView<BandPageController> {
  const BandPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BandPage')),
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: controller.kGooglePlex,
        onMapCreated: (GoogleMapController googleMapController) {
          controller.controller.complete(googleMapController);
        },
        myLocationEnabled: true,
        myLocationButtonEnabled: false,
        tiltGesturesEnabled: false,
      ),
    );
  }
}
