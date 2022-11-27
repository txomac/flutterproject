import 'models/cart_model.dart';
import 'package:epsi_shop/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CartModel _lsProducts = context.watch<CartModel>();
    return Scaffold(
      appBar: AppBar(title: Text("Panier EpsiShop")),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                "Votre panier contient ${_lsProducts.getCount()} élément",
                style: Theme.of(context).textTheme.headline6,
              ),
              Expanded(
                  child: ListView.builder(
                itemCount: context.watch<CartModel>().getCount(),
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Image.network(
                      _lsProducts.getProducts()[index].image,
                      width: 60,
                      height: 60,
                    ),
                    title: Text(_lsProducts.getProducts()[index].nom),
                    trailing: IconButton(
                        onPressed: () {
                          _lsProducts.remove(_lsProducts.getProducts()[index]);
                        },
                        icon: const Icon(Icons.delete)),
                  );
                },
              )),
              const Spacer(),
              Text(
                "Votre panier total est de : ${context.watch<CartModel>().getTotalPrice()}",
                style: Theme.of(context).textTheme.headline6,
              )
            ],
          ),
        ),
      ),
    );
  }
}
