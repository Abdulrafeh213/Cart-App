import 'package:cart_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/item_counter_widget.dart';
import '../view_models/item_view.dart';
import '../widgets/list_view_tile.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppText.cartPageTitle),
        actions: const [ItemCounterWidget()],
      ),
      body: SafeArea(
        child: Consumer<ItemViewModel>(
          builder: (context, itemViewModel, child) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: ListView.builder(
                itemCount: itemViewModel.itemList.length,
                itemBuilder: (context, index) {
                  return ListViewTile(
                      item: itemViewModel.itemList[index],
                      itemViewModel: itemViewModel);
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
