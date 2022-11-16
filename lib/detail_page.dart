import 'package:flutter/material.dart';

import 'product_model.dart';

class DetailPage extends StatelessWidget {
  final Product product;
  const DetailPage(this.product,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.nom),),
      body: Hero(
          tag: product.nom,
          child: Image.network(product.image)
      ),
    );
  }
}