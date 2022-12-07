import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class CardWIdget extends StatelessWidget {
  const CardWIdget({super.key, required this.item});

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Card(
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
    );
  }
}
