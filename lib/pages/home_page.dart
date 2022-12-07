import 'package:belanja/widgets/listview.dart';
import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    Item(
      name: 'Sugar',
      price: 5000,
    ),
    Item(
      name: 'Salt',
      price: 2000,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nav & Rute - Adika - 2041720171"),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: ListViewBuilder(
          items: items,
        ),
      ),
    );
  }
}
