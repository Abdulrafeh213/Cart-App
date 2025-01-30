import 'package:flutter/material.dart';

import '../models/item.dart';
import '../utils/data.dart';
import 'item_list_view.dart';

class ItemListWidget extends StatelessWidget {
  const ItemListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height / 1.25,
          child: ListView.builder(
              itemCount: Data.list.length,
              itemBuilder: (context, index) {
                Item item = Data.list[index];
                return ItemListView(item: item);
              }),
        ),
      ),
    );
  }
}
