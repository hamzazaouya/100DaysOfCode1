import 'package:flutter/material.dart';
import 'package:day21/add_to_card.dart';

class ProductOne extends StatelessWidget {
  ProductOne({Key? key}) : super(key: key);

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
            color: Colors.green,
            alignment: Alignment.center,
            child: Text("Product One \n Price = $price")
          ),
          const SizedBox(height: 20,),
          AddToCard(price),
        ],
      )),
    );
  }
}