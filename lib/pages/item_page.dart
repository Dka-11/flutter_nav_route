import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Item Page"),
      ),
      body: const Center(
        child: Text("This is new Page"),
      ),
    );
  }
}
