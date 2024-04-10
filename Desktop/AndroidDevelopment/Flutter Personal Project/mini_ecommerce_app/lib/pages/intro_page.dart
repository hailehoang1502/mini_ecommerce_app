import 'package:flutter/material.dart';
import 'package:mini_ecommerce_app/components/my_button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.shopping_bag,
              size: 72,
              color: Theme.of(context).colorScheme.inversePrimary,),
            SizedBox(height: 25,),

            //title
            Text(
              "Mini Perfume Shop",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),

            SizedBox(height: 10,),

            //subtitle
            Text(
              "High Quality Products",
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary
              ),
            ),

            SizedBox(height: 10,),

            Text(
              "Shop Now",
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary
            ),),

            SizedBox(height: 10,),

            //button
            MyButton(
                onTap: () => Navigator.pushNamed(context, '/shop_page'),
                child: Icon(Icons.arrow_forward))
          ],
        ),
      ),
    );
  }
}