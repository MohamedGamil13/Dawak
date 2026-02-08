import 'package:dawak/core/routing/app_navigator.dart';
import 'package:dawak/core/routing/app_router.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:local_auth/local_auth.dart';

final serviceLocator = GetIt.instance;

void setupDependencies() {
  serviceLocator.registerLazySingleton<GoRouter>(() => router);
  serviceLocator.registerLazySingleton<AppNavigator>(
    () => AppNavigator(serviceLocator<GoRouter>()),
  );
  serviceLocator.registerLazySingleton<LocalAuthentication>(
    () => LocalAuthentication(),
  );
}
