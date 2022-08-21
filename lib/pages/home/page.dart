import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zeping_virtual_band/data/modules/band/controller.dart';
import 'package:zeping_virtual_band/pages/home/controller.dart';
import 'package:zeping_virtual_band/routes/routes.dart';

class HomePage extends GetView<HomePageController> {
  final BandController bandController = Get.find<BandController>();
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Virtual Band')),
      body: bandController.obx(
        (_) {
          return RefreshIndicator(
            color: const Color(0xFF1E2124),
            backgroundColor: Colors.white,
            onRefresh: controller.fetchBands,
            child: Obx(
              () {
                return ListView.builder(
                  itemCount: bandController.bands.length,
                  itemBuilder: (context, index) => InkWell(
                    onTap: () => Get.toNamed(Routes.BAND, arguments: bandController.bands[index]),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            bandController.bands[index].bandId,
                            style: const TextStyle(color: Color.fromRGBO(255, 255, 255, 1), fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
