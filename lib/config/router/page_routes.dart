import 'package:get/route_manager.dart';
import 'package:sanber_pos/config/router/bindings.dart';
import 'package:sanber_pos/config/router/route_name.dart';
import 'package:sanber_pos/ui/pages/pages.dart';
import 'package:sanber_pos/ui/pages/product_page/detail_product_page.dart';

class PageRoutesApp {
  static final pages = [
    GetPage(name: RouteName.splashPages, page: () => const SplashPages()),
    GetPage(name: RouteName.loginPages, page: () => const LoginPages()),
    GetPage(name: RouteName.registerPages, page: () => const RegisterPages()),
    GetPage(name: RouteName.statusPages, page: () => const StatusPages()),
    GetPage(name: RouteName.mainPages, page: () => MainApp()),
    GetPage(name: RouteName.productPages, page: () => const ProductPage()),
    GetPage(
        name: RouteName.detailProductPages,
        page: () => const DetailProductPage()),
    GetPage(
        name: RouteName.addProductPages, page: () => const AddProductPage()),
    GetPage(
        name: RouteName.choiceCategoryProduct,
        page: () => const ChoiceCategoryProduct()),
    GetPage(
        name: RouteName.listCategory,
        page: () => CategoryListPage(),
        binding: HomesBindings()),
    GetPage(
        name: RouteName.addCategory,
        page: () => AddCategoryPage(),
        binding: HomesBindings()),
  ];
}
