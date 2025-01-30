import 'package:cart_app/utils/constants.dart';
import 'package:flutter/material.dart';

import '../models/item.dart';
import '../view_models/item_view.dart';

class ListViewTile extends StatelessWidget {
  final Item item;
  final ItemViewModel itemViewModel;

  const ListViewTile(
      {super.key, required this.item, required this.itemViewModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: AppColors.primaryColor),
      ),
      child: SizedBox(
        height: 120,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.asset(
                item.picture,
                width: 80,
                height: 80,
                fit: BoxFit.fill,
              ),
              Text(
                item.name,
                style: const TextStyle(fontSize: 16),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                      child: const Text("Remove")),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      ElevatedButton(
                          onPressed: () {
                            itemViewModel.decreaseItemCount(item);
                          },
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                          child:
                              const Text("-", style: TextStyle(fontSize: 30))),
                      const SizedBox(width: 5),
                      Text(item.itemCount.toString()),
                      const SizedBox(width: 5),
                      ElevatedButton(
                          onPressed: () {
                            itemViewModel.increaseItemCount(item);
                          },
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                          child:
                              const Text("+", style: TextStyle(fontSize: 30))),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
