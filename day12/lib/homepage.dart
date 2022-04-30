import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var couter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home Page"),
          centerTitle: true,
        ),
        body: const Center(
          child: NewWidget(),
        ));
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 100,
      width: 360,
      color: Colors.blue,
      child: RaisedButton(
        onPressed: (() {
          print(MediaQuery.of(context).size.width);
          print("fuck");
        }),
        child: const Text("Print width"),
      ),
    );
  }
}
