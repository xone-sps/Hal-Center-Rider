import 'package:delivery_app/screen/HomeScreen.dart';
import 'package:delivery_app/screen/Profile.dart';
import 'package:delivery_app/screen/order_history.dart';
import 'package:delivery_app/screen/payment.dart';
import 'package:delivery_app/screen/store.dart';
import 'package:flutter/material.dart';
import '../main.dart';
Route<dynamic> generateRoute(RouteSettings settings) {
  final args = settings.arguments;
  switch (settings.name) {
    case '/':
      return _getPageRoute(
        routeName: settings.name,
        viewToShow: MyHomePage(),
      );
    case '/home':
      return _getPageRoute(
        routeName: settings.name,
        viewToShow: HomeScreen(),
      );
    case '/store':
      return _getPageRoute(
        routeName: settings.name,
        viewToShow: Store(),
      );
    case '/payment':
      return _getPageRoute(
        routeName: settings.name,
        viewToShow: Payment(),
      );
    case '/orderhistory':
      return _getPageRoute(
        routeName: settings.name,
        viewToShow: OrderHistory(),
      );
    case '/profile':
      return _getPageRoute(
        routeName: settings.name,
        viewToShow: Profile(),
      );
    case '/order':
      if (args is String) {
        return MaterialPageRoute(
          builder: (_) => OrderHistory(),
        );
      }
      return _errorRoute();
    default:
      _errorRoute();
  }
}

Route<dynamic> _errorRoute() {
  return MaterialPageRoute(builder: (_) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Error'),
      ),
      body: Center(
        child: Text('Route not found'),
      ),
    );
  });
}

PageRoute _getPageRoute({String routeName, Widget viewToShow}) {
  return MaterialPageRoute(
      settings: RouteSettings(
        name: routeName,
      ),
      builder: (_) => viewToShow);
}
