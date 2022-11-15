import 'package:epsi_shop/list_product_page.dart';
import 'package:epsi_shop/product_model.dart';
import 'package:flutter/material.dart';

import 'cart_page.dart';

void main() {
  runApp(EpsiShop());
}

class EpsiShop extends StatelessWidget {
  const EpsiShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Epsi Shop",
      theme: ThemeData(
        primaryColor: Colors.amber
      ),
      //home: CartPage(),
      home:  ListProductPage(),
    );
  }
}



