import 'package:flutter/material.dart';
import 'package:day21/add_to_card.dart';

class ProductTwo extends StatelessWidget {
  ProductTwo({Key? key}) : super(key: key);

  var price = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.red,
            alignment: Alignment.center,
            child: Text("Product Two \n Price = $price")
          ),
          const SizedBox(height: 20,),
          AddToCard(price),
        ],
      )),
    );
  }
}