abstract class API_CLIENT {
  static String get loginClient => '/api/auth/login';
  static String get loginClient2 => '/client/login';
  static String get refreshToken => '/token/refresh'; // 2x
  static String get getDataStore => '/store/data';
}

abstract class API_CATEGORY {
  static String get categoryList => '/api/categories';
  static String get categoryDetail => '/api/categories/{category_id}';
  static String get categoryAddData => '/api/categories'; // 2x
  static String get categoryUpdateData => '/api/categories/{category_id}';
  static String get categoryDeleteData => '/api/categories/{category_id}';
}

abstract class API_PRODUCT {
  static String get loginClient => '/api/auth/login';
  static String get loginClient2 => '/client/login';
  static String get refreshToken => '/token/refresh'; // 2x
  static String get getDataStore => '/store/data';
}
