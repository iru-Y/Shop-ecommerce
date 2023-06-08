import 'package:flutter/material.dart';
import 'package:shop/pages/product_detail_page.dart';
import 'package:shop/pages/products_overview_page.dart';
import 'package:shop/shared/app_routes.dart';

class MyApp extends StatelessWidget {


  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.purple,
          primaryColor: Colors.deepOrange,
          fontFamily: 'Lato'),
      home: ProductsOverviewPage(),
      routes: {
        AppRoutes.productDetail: (context) => const ProductDetailPage()
      },
    );
  }
}
