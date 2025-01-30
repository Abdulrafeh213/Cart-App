import 'package:cart_app/utils/constants.dart';

import '../view_models/item_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ItemCounterWidget extends StatelessWidget {
  const ItemCounterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 15,
          height: 15,
          decoration: const BoxDecoration(
              color: AppColors.boxColor, shape: BoxShape.circle),
          child: Center(
            child: Consumer<ItemViewModel>(
              builder: (context, itemViewModel, child) {
                return Text(
                  itemViewModel.itemList.length.toString(),
                  style: const TextStyle(
                    color: AppColors.secondaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                );
              },
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(right: 15),
          child: Icon(
            Icons.shopping_cart,
            size: 30,
          ),
        ),
      ],
    );
  }
}
