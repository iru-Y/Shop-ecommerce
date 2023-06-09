import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/models/product.dart';
import 'package:shop/shared/app_routes.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context, listen: false);
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GestureDetector(
        onTap: () => Navigator.of(context).pushNamed(AppRoutes.productDetail),
        child: GridTile(
          footer: GridTileBar(
              backgroundColor: Colors.black87,
              leading: Consumer<Product>(
                builder: (context, product, _) =>
                  IconButton(
                  color: Colors.purple,
                  onPressed: () {
                    product.toggleFavorite();
                  },
                  icon: Icon(product.isFavorite
                      ? Icons.favorite
                      : Icons.favorite_border_outlined),
                ),
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
