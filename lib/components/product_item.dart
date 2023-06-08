import 'package:flutter/material.dart';
import 'package:shop/models/product.dart';
import 'package:shop/shared/app_routes.dart';

class ProductItem extends StatelessWidget {
  final Product product;

  const ProductItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GestureDetector(
        onTap: () =>
          Navigator.of(context).pushNamed(AppRoutes.productDetail),
        child: GridTile(
          footer: GridTileBar(
              backgroundColor: Colors.black87,
              leading: IconButton(
                color: Theme.of(context).colorScheme.primary,
                onPressed: () {},
                icon: const Icon(Icons.favorite),
              ),
              title: Text(product.title),
              trailing: IconButton(
                  color: Theme.of(context).colorScheme.primary,
                  onPressed: () {},
                  icon: const Icon(Icons.shopping_cart))),
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
