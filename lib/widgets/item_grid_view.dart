import 'package:cart_app/utils/constants.dart';
import '/models/item.dart';
import '../view_models/item_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ItemsGridView extends StatelessWidget {
  final Item item;
  const ItemsGridView({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 180,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.primaryColor)),
      child: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Stack(
              children: [
                Image.asset(
                  item.picture,
                  height: 70,
                  width: 70,
                  fit: BoxFit.fill,
                ),
                Visibility(
                    visible:
                        context.read<ItemViewModel>().itemList.contains(item),
                    child: Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: AppColors.boxColor),
                        child: Center(
                          child: Text(
                            item.itemCount.toString(),
                            style: const TextStyle(
                                color: AppColors.secondaryColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ))
              ],
            ),
            Text(
              item.name,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<ItemViewModel>().add(item);
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              )),
              child: const Text("Add"),
            )
          ],
        ),
      ),
    );
  }
}
