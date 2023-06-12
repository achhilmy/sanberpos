import 'package:get_it/get_it.dart';
import 'package:sanber_pos/blocs/Authentication_cubit/authentication_cubit.dart';

final getIt = GetIt.instance;

/// Service Locator Helper
class ServiceLocatorHelper {
  /// Setup Service Locator so that we can access all the dependencies everywhere.
  static Future<void> setupServiceLocator() async {
    await setupBLoCServiceLocator();
  }

  /// Setup BLoC Service Locator
  static Future<void> setupBLoCServiceLocator() async {
    /// Get access token
    ///  /// Login BLoC
    getIt.registerLazySingleton(() => AuthenticationCubit());
  }
}
