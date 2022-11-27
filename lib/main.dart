import 'package:epsi_shop/list_product_page.dart';
import 'package:epsi_shop/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import 'models/cart_model.dart';
import 'cart_page.dart';
import 'detail_page.dart';

void main() {
  runApp(ChangeNotifierProvider<CartModel>(
    create: (context) => CartModel([]),
    child: EpsiShop(),
  ));
}

class EpsiShop extends StatelessWidget {
  EpsiShop({Key? key}) : super(key: key);
  final _router = GoRouter(routes: [
    GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return ListProductPage();
          //return RequestDogsFactsPages();
        },
        routes: [
          GoRoute(
            path: 'cart',
            builder: (BuildContext context, GoRouterState state) {
              return const CartPage();
            },
          ),
          GoRoute(
            path: 'detail',
            builder: (BuildContext context, GoRouterState state) {
              return DetailPage(state.extra as Product);
            },
          ),
          //GoRoute(
          //  path: 'detail',
          //  builder: (BuildContext context, GoRouterState state) {
          //    return DetailPage();
          //  },
          //)
        ]),
  ]);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: "Epsi Shop",
      theme: ThemeData(
        primaryColor: Colors.amber,
      ),
      //home: CartPage(),
      routerConfig: _router,
      //home:  ListProductPage(),
    );
  }
}
