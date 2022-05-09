import 'package:day21/page1.dart';
import 'package:day21/products/product_one.dart';
import 'package:day21/products/product_two.dart';
import 'package:flutter/material.dart';
import 'package:day21/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Price(),
      child: MaterialApp(
        home: HomePage(),
        routes: {
          'productone': (context) => ProductOne(),
          'producttwo': (context) => ProductTwo(),
          'pageone': (context) => Pageone()
        },
      ),
    );
  }
}

class Price extends ChangeNotifier {
  var totalPrice = 0;

  addPrice(int price) {
    totalPrice += price;
    notifyListeners();
  }

  removePrice(int price) {
    totalPrice -= price;
    notifyListeners();
  }
}
