import 'package:flutter/material.dart';
import 'package:mini_ecommerce_app/components/my_drawer.dart';
import 'package:mini_ecommerce_app/components/my_product_tile.dart';
import 'package:provider/provider.dart';

import '../models/shop.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    final products = context.watch<Shop>().shop;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Mini Perfume Shop", style: TextStyle(color: Colors.black),),
          actions: [
            IconButton(
              onPressed: () => Navigator.pushNamed(context, '/cart_page'),
              icon: Icon(Icons.shopping_cart_outlined, color: Colors.black,)
            )
        ],
      ),
      drawer: MyDrawer(),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SizedBox(
        height: 550,
        child: ListView.builder(
            itemCount: products.length,
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.all(15),
            itemBuilder: (context, index) {
          final product = products[index];
          return MyProductTile(product: product);
        }),
      ),
    );
  }

}