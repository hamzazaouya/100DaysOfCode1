import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  int price = 20;
  bool isAdded = false;
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: ((context) => ChangePrice()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("DAY 20"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Selector<ChangePrice, int>(
              selector: (context, pTotalPrice) => pTotalPrice.totalPrice,
              builder: (context, totalPrice, child) =>
                  Text("Price = '$totalPrice'"),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Selector<ChangePrice, void>(
                  selector: (context, paddPrice) => paddPrice.addPriceVar,
                  builder: (context, addPriceVar, child) => ElevatedButton(
                      onPressed: () {
                        print(addPriceVar);
                      },
                      child: const Text("Add")),
                ),
                const SizedBox(
                  width: 10,
                ),
                Selector<ChangePrice, void>(
                  selector: (context, paddPrice) => paddPrice.addPrice(price),
                  builder: (context, addPrice, child) => ElevatedButton(
                      onPressed: () {
                        if (!isAdded) {
                          addPrice;
                          isAdded = true;
                        }
                      },
                      child: const Text("Add")),
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}

class ChangePrice extends ChangeNotifier {
  int _totalPrice = 0;
  int _addPrice = 0;
  int _minPrice = 0;

  get totalPrice => _totalPrice;
  get addPriceVar => _addPrice;
  get minPriveVar => _minPrice;

  addPrice() {
    _totalPrice += _addPrice;
    notifyListeners();
  }

  minusPrice(int price) {
    _totalPrice -= _minPrice;
    notifyListeners();
  }
}
