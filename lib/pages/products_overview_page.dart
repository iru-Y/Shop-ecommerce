import 'package:flutter/material.dart';
import 'package:shop/components/product_item.dart';
import 'package:shop/data/dummy_data.dart';
import 'package:shop/models/product.dart';

class ProductsOverviewPage extends StatelessWidget {

  final List<Product> loadedProdcuts = dummyProducts;

  ProductsOverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Minha loja'))
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: loadedProdcuts.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
           childAspectRatio: 3/2,
            crossAxisSpacing: 10,
             mainAxisSpacing: 10),
          
         itemBuilder: ((context, index) => ProductItem(product: loadedProdcuts[index]))),
      ),
    );
  }
}