import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:day12/page1.dart';

import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Homepage(),
      getPages: [
        GetPage(name: '/homepage', page: () => const Homepage()),
        GetPage(name: '/pageone', page: () => const Pageone()),
      ]
    );
  }
}
