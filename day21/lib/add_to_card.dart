import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:day21/main.dart';

class AddToCard extends StatelessWidget {
  int price;

  AddToCard(this.price, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Consumer<Price>(
          builder: ((context, value, child) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Price = ${value.totalPrice}\$"),
                  ElevatedButton(
                      onPressed: () {
                        value.removePrice(price);
                      },
                      child: const Text("remove")),
                  const SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        value.addPrice(price);
                      },
                      child: const Text("Add"))
                ],
              )))
    ]);
  }
}
