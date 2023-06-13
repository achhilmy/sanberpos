import 'package:flutter/material.dart';
import 'package:sanber_pos/ui/pages/pages.dart';
import 'package:sanber_pos/ui/pages/product_page/category/add_category.dart';

class RootRouter {
  Route? generateRouter(RouteSettings settings) {
    print("root requested route ${settings.name}");
    final arguments = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => SplashPages());
      case '/register':
        return MaterialPageRoute(builder: (_) => RegisterPages());
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginPages());
      case '/main-app':
        return MaterialPageRoute(builder: (_) => MainApp());
      case '/list-category-product':
        return MaterialPageRoute(builder: (_) => ListCategoryProduct());
      case '/product':
        return MaterialPageRoute(builder: (_) => ProductPage());
      case '/list-category':
        return MaterialPageRoute(builder: (_) => CategoryListPage());
      case '/add-category':
        return MaterialPageRoute(builder: (_) => AddCategory());
      case '/detail-category':
        return MaterialPageRoute(
            builder: (_) => DetailCategory(value: arguments));
    }
    return null;
  }
}
