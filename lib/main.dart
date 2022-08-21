import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zeping_virtual_band/routes/pages.dart';
import 'package:zeping_virtual_band/routes/routes.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: 'Zeping',
      initialRoute: Routes.HOME,
      getPages: AppPages.pages,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1E2124),
          elevation: 0,
        ),
        inputDecorationTheme: const InputDecorationTheme(
          labelStyle: TextStyle(fontSize: 12, color: Color.fromRGBO(255, 255, 255, 0.4)),
          border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        ),
        scaffoldBackgroundColor: const Color(0xFF1E2124),
      ),
    ),
  );
}
