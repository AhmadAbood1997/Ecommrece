import 'package:ecommerce/screens/order_confirmation/order_confirmation_screen.dart';
import 'package:flutter/material.dart';
import '../../models/models.dart';
import '../screens/screens.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return HomeScreen.route();

      case SplashScreen.routeName:
        return SplashScreen.route();

      case CartScreen.routeName:
        return CartScreen.route();

      case ProductScreen.routeName:
        return ProductScreen.route(product: settings.arguments as Product);

      case WishlistScreen.routeName:
        return WishlistScreen.route();

      case CatalogScreen.routeName:
        return CatalogScreen.route(category: settings.arguments as Categoryy);

      case CheckoutScreen.routeName:
        return CheckoutScreen.route();

      case OrderConfirmation.routeName:
        return OrderConfirmation.route();

      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
        settings: RouteSettings(name: '/error'),
        builder: (_) => Scaffold(
                appBar: AppBar(
              title: Text('Error'),
            )));
  }
}
