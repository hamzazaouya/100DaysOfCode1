import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ModelOne(),
        child: Scaffold(
            appBar: AppBar(),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Consumer<ModelOne>(builder: (context, value, child) {
                    print("text one");
                    return Text(value.nameOne);
                  }),
                  Consumer<ModelOne>(builder: (context, value, child) {
                    print("text two");
                    return Text(value.nametwo);
                  }),
                  Consumer<ModelOne>(builder: (context, value, child) {
                    print("Button one");
                    return MaterialButton(
                      color: Colors.blue,
                      textColor: Colors.white,
                      onPressed: () {
                        value.changeNameOne();
                      },
                      child: const Text("Button One"),
                    );
                  }),
                ],
              ),
            )));
  }
}

class ModelOne extends ChangeNotifier {
  String nameOne = "Welcome1";
  String nametwo = "Welcome2";
  changeNameOne() {
    nameOne = "Welcome To Model One";
    notifyListeners();
  }

  changeNameTwo() {
    nameOne = "Welcome To Model Two";
    notifyListeners();
  }
}
