import 'package:epsi_shop/list_product_page.dart';
import 'package:epsi_shop/product_model.dart';
import 'package:epsi_shop/request_dogs_facts.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'cart_page.dart';

void main() {
  runApp(EpsiShop());
}

class EpsiShop extends StatelessWidget {
   EpsiShop({Key? key}) : super(key: key);
  final _router = GoRouter(
      routes: [
        GoRoute(
            path: '/',
            builder: (BuildContext context, GoRouterState state) {
              //return ListProductPage();
              return RequestDogsFactsPages();
            },
          routes: [
            GoRoute(
              path: 'cart',
              builder: (BuildContext context, GoRouterState state) {
                return CartPage();
              },
            ),
            //GoRoute(
            //  path: 'detail',
            //  builder: (BuildContext context, GoRouterState state) {
            //    return DetailPage();
            //  },
            //)
          ]

        ),
      ]
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: "Epsi Shop",
      theme: ThemeData(
        primaryColor: Colors.amber
      ),
      //home: CartPage(),
      routerConfig: _router,
      //home:  ListProductPage(),
    );
  }
}



