import 'package:get/route_manager.dart';
import 'package:sanber_pos/config/router/route_name.dart';
import 'package:sanber_pos/ui/pages/pages.dart';

class PageRoutesApp {
  static final pages = [
    GetPage(name: RouteName.splashPages, page: () => const SplashPages()),
    GetPage(name: RouteName.loginPages, page: () => LoginPages()),
    GetPage(name: RouteName.registerPages, page: () => RegisterPages()),
    GetPage(name: RouteName.statusPages, page: () => StatusPages()),
    GetPage(name: RouteName.mainPages, page: () => MainApp()),
  ];
}
