import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/components/product_item.dart';

import '../models/product.dart';
import '../models/product_list.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProductList>(context);
    final List<Product> loadedProducts = provider.items;
    return GridView.builder(
      itemCount: loadedProducts.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
       childAspectRatio: 3/2,
        crossAxisSpacing: 10,
         mainAxisSpacing: 10),
      
     itemBuilder: ((context, index) => ChangeNotifierProvider.value(
      value: loadedProducts[index],
      child: const ProductItem())));
  }
}