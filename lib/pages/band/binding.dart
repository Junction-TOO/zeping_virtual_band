import 'dart:async';

import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:zeping_virtual_band/pages/band/controller.dart';

class BandPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BandPageController>(() => BandPageController());
  }
}
