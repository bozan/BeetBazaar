import 'package:beet_bazaar_app/common/widgets/bottom_bar.dart';
import 'package:beet_bazaar_app/features/account/screens/add_product_screen.dart';
import 'package:beet_bazaar_app/features/account/screens/my_product_screen.dart';
import 'package:beet_bazaar_app/features/auth/screens/auth_screen.dart';
import 'package:beet_bazaar_app/features/home/screens/home_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  // give us any data that is useful in constructing a route
  switch (routeSettings.name) {
    case AuthScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AuthScreen(),
      );

    case HomeScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HomeScreen(),
      );

    case MyProductScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const MyProductScreen(),
      );

    case AddProductScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AddProductScreen(),
      );

    case BottomBar.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const BottomBar(),
      );

    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(child: Text('Screen does not exist!')),
        ),
      );
  }
}
