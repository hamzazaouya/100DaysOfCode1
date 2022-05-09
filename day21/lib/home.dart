import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:day21/main.dart';
import 'package:day21/products/product_one.dart';
import 'package:day21/products/product_two.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Selector<Price, int>(builder: (
            (context, value, child) => 
              Text("Hello Price =  $value")
          ),selector: (context, tprices) => tprices.totalPrice),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('productone');
              },
              child: const Text("Product One")),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('producttwo');
              },
              child: const Text("Product Two"))
        ]),
      ),
    );
  }
}
