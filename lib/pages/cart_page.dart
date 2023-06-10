import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/cart.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Cart? cart = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Meu carrinho'),
      ),
      body: Column(
        children: [
          Card(
            margin: const EdgeInsets.all(25),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Total', style: TextStyle(fontSize: 20)),
                  const SizedBox(width: 10),
                  Chip(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      label: Text(
                        'R\$${cart!.totalAmount}',
                        style: TextStyle(color: Colors.white),
                      )),
                  const Spacer(),
                  TextButton(
                      onPressed: () {},
                      child: Text('COMPRAR',
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.primary))),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
