import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    Item(name: 'Sugar', price: 5000),
    Item(name: 'Salt', price: 2000)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nav & Rute - Adika - 2041720171"),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            // Masih tidak dapat di klik, for add action use InkWell Widget
            // Widget GestureDoctor umum / bisa digunakan untuk selain gesture sentuhan.
            return InkWell(
              // InkWell memberikan efek ditekan.
              onTap: () {
                Navigator.pushNamed(context, '/item', arguments: item);
              },
              child: Card(
                child: Container(
                  margin: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Expanded(child: Text(item.name)),
                      Expanded(
                          child: Text(
                        item.price.toString(),
                        textAlign: TextAlign.end,
                      ))
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
