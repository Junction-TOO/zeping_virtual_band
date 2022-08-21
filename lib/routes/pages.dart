import 'package:get/get.dart';
import 'package:zeping_virtual_band/pages/band/binding.dart';
import 'package:zeping_virtual_band/pages/band/page.dart';
import 'package:zeping_virtual_band/pages/home/binding.dart';
import 'package:zeping_virtual_band/pages/home/page.dart';
import 'package:zeping_virtual_band/routes/routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(name: Routes.HOME, page: () => HomePage(), binding: HomePageBinding()),
    GetPage(name: Routes.BAND, page: () => const BandPage(), binding: BandPageBinding()),
  ];
}
