import 'package:get/get.dart';
import 'package:zeping_virtual_band/data/modules/band/controller.dart';
import 'package:zeping_virtual_band/data/provider/api.dart';
import 'package:zeping_virtual_band/pages/home/controller.dart';

class HomePageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BandController>(() => BandController(ApiProvider()));
    Get.lazyPut<HomePageController>(() => HomePageController());
  }
}
