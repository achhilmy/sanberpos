import 'package:get/route_manager.dart';
import 'package:sanber_pos/config/router/route_name.dart';
import 'package:sanber_pos/ui/pages/pages.dart';

class PageRoutesApp {
  static final pages = [
    GetPage(name: RouteName.splashPages, page: () => const SplashPages()),
    GetPage(name: RouteName.loginPages, page: () => const LoginPages()),
    GetPage(name: RouteName.registerPages, page: () => const RegisterPages()),
    GetPage(name: RouteName.statusPages, page: () => const StatusPages()),
    GetPage(name: RouteName.mainPages, page: () => const MainApp()),
    GetPage(name: RouteName.productPages, page: () => const ProductPage()),
  ];
}
