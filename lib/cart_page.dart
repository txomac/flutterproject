import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Panier EpsiShop")),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text("Votre panier contient 1 élément",
                style: Theme.of(context).textTheme.headline6,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                    leading :Image.network("https://asia.olympus-imaging.com/content/000107506.jpg",
                      width: 80,height:80 ,),
                    title :Text("Titre de mon article"),
                    trailing:Icon(Icons.delete)
                ),
              ),
              Spacer(),
              Text("Votre panier total est de : 22.0",
                style: Theme.of(context).textTheme.headline6,
              )

            ],
          ),
        ),
      ),
    );
  }
}
