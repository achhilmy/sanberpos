import 'package:flutter/material.dart';
import 'package:sanber_pos/ui/pages/main_app/edit_profile.dart';
import 'package:sanber_pos/ui/pages/pages.dart';
import 'package:sanber_pos/ui/pages/product_page/category/add_category.dart';
import 'package:sanber_pos/ui/pages/product_page/product/add_product_page.dart';
import 'package:sanber_pos/ui/pages/product_page/product/detail_product.dart';

class RootRouter {
  Route? generateRouter(RouteSettings settings) {
    print("root requested route ${settings.name}");
    final arguments = settings.arguments;
    final dataProduct = settings.arguments;

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
      case '/detail-product':
        return MaterialPageRoute(
            builder: (_) => DetailProductPage(
                  dataProduct: arguments,
                ));
      case '/add-product':
        return MaterialPageRoute(
            builder: (_) => AddProductPage(
                  isEdit: arguments,
                ));
      case '/list-category':
        return MaterialPageRoute(builder: (_) => CategoryListPage());
      case '/add-category':
        return MaterialPageRoute(
            builder: (_) => AddCategory(
                  isEdit: dataProduct,
                ));
      case '/detail-category':
        return MaterialPageRoute(
            builder: (_) => DetailCategory(value: arguments));
      case '/edit-profile':
        return MaterialPageRoute(builder: (_) => EditProfilePage());
    }
    return null;
  }
}
