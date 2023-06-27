import 'package:ecommerce_app/models/category_model.dart';
import 'package:flutter/material.dart';

import '../screens/screens.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('This is route: ${settings.name}');

    switch (settings.name) {
      case '/':
        return HomeScreen.route();

      case HomeScreen.routeName:
        return HomeScreen.route();

      case CartScreen.routeName:
        return CartScreen.route();

      case CatalogScreen.routeName:
        return CatalogScreen.route(category: settings.arguments as Category);

      case ProductScreen.routeName:
        return ProductScreen.route();

      case WishListScreen.routeName:
        return WishListScreen.route();

      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
                appBar: AppBar(
              title: Text("Error"),
            )),
        settings: RouteSettings(name: '/error'));
  }
}
