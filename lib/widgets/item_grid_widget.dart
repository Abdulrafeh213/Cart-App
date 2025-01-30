import 'package:flutter/material.dart';

import '../models/item.dart';
import '../utils/data.dart';
import 'item_grid_view.dart';

class ItemGridWidget extends StatelessWidget {
  const ItemGridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height / 1.25,
        child: GridView.builder(
          itemCount: Data.list.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
          ),
          itemBuilder: (context, index) {
            Item item = Data.list[index];
            return ItemsGridView(item: item);
          },
        ),
        // child: ListView.builder(
        //   scrollDirection: Axis.horizontal,
        //   itemCount: Data.list.length,
        //   itemBuilder: (context, index) {
        //     Item item = Data.list[index];
        //     return ItemsGridView(item: item);
        //   },
        // ),
      ),
    );
  }
}
