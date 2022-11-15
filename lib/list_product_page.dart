import 'package:flutter/material.dart';

import 'product_model.dart';

class ListProductPage extends StatelessWidget {
  ListProductPage({Key? key}) : super(key: key);

  final _lsProductsProduct = [
    Product("Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops","Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday",109.95,"https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg","men's clothing"),
    Product("Mens Casual Premium Slim Fit T-Shirts ","Slim-fitting style, contrast raglan long sleeve, three-button henley placket, light weight & soft fabric for breathable and comfortable wearing. And Solid stitched shirts with round neck made for durability and a great fit for casual fashion wear and diehard baseball fans. The Henley style round neckline includes a three-button placket.",22.3,"https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg","men's clothing"),
    Product("Mens Cotton Jacket","great outerwear jackets for Spring/Autumn/Winter, suitable for many occasions, such as working, hiking, camping, mountain/rock climbing, cycling, traveling or other outdoors. Good gift choice for you or your family member. A warm hearted love to Father, husband or son in this thanksgiving or Christmas Day.",55.99,"https://fakestoreapi.com/img/71li-ujtlUL._AC_UX679_.jpg","men's clothing"),
    Product("Mens Casual Slim Fit","The color could be slightly different between on the screen and in practice. / Please note that body builds vary by person, therefore, detailed size information should be reviewed below on the product description.",15.99,"https://fakestoreapi.com/img/71YXzeOuslL._AC_UY879_.jpg","men's clothing"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Liste des produits"),
        actions: [
          Stack(
            alignment: Alignment.center,
            children: [
              IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart)),
              Positioned(
                right: 8,
                top: 8,
                child: Container(width: 18,height: 18,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red),
                    child:const Align(
                        alignment: Alignment.center,
                        child: Text("1",style: TextStyle(color: Colors.white),)
                    )
                ),
              ),
            ],
          )
        ],
      ),
      body: ListView.builder(
          itemCount:_lsProductsProduct.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(_lsProductsProduct[index].nom),
            subtitle: Text(_lsProductsProduct[index].displayPriceInEuro()),
            leading: Image.network(_lsProductsProduct[index].image),
            trailing: TextButton(child: const Text("Add"),onPressed: (){},),
          )
      ),
    );
  }
}
