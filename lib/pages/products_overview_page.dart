import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/data/dummy_data.dart';
import 'package:shop/models/product.dart';
import 'package:shop/models/product_list.dart';

import '../components/product_grid.dart';

enum FilterOptions { favorite, all }

class ProductsOverviewPage extends StatelessWidget {
  final List<Product> loadedProdcuts = dummyProducts;

  ProductsOverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProductList>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Minha loja')),
        actions: [
          PopupMenuButton(
            icon: const Icon(Icons.more_vert),
            itemBuilder: (_) => [
              const PopupMenuItem(
                value: FilterOptions.favorite,
                child: Text('Somente favoritos'),
              ),
              const PopupMenuItem(
                value: FilterOptions.all,
                child: Text('Todos'),
              )
            ],
            onSelected: (FilterOptions selectedValue) {
              if (selectedValue == FilterOptions.favorite) {
                provider.showFavoriteOnly();
              } else {
                provider.showAll();
              }
            },
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(10),
        child: ProductGrid(),
      ),
    );
  }
}
