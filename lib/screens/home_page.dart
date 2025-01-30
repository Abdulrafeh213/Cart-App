import 'package:provider/provider.dart';

import '../widgets/item_grid_widget.dart';
import '../widgets/item_list_widget.dart';
import '../widgets/my_bool_notifier.dart';
import '/utils/constants.dart';
import '../widgets/item_counter_widget.dart';
import 'cart_screen.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(AppText.homePageTitle),
        actions: [
          GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const CartScreen();
                }));
              },
              child: const ItemCounterWidget()),
        ],
      ),
      body: Consumer<MyBoolNotifier>(builder: (context, myBoolNotifier, child) {
        return Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    AppText.bodyViewText,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Provider.of<MyBoolNotifier>(context, listen: false)
                              .updateBoolValueFalse(true, true);
                          // setState(() {
                          //   value = true;
                          //   color = true;
                          // });
                        },
                        child: Icon(Icons.grid_view_rounded,
                            color: myBoolNotifier.myColorValue
                                ? Colors.blue
                                : Colors.black),
                      ),
                      GestureDetector(
                        onTap: () {
                          Provider.of<MyBoolNotifier>(context, listen: true)
                              .updateBoolValueFalse(false, false);
                          // setState(() {
                          //   value = false;
                          //   color = false;
                          // });
                        },
                        child: Icon(Icons.view_list,
                            color: myBoolNotifier.myColorValue
                                ? Colors.black
                                : Colors.blue),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            myBoolNotifier.myBoolValue
                ? const ItemGridWidget()
                : const ItemListWidget(),
          ],
        );
      }),
    );
  }
}
