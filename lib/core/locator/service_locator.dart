import 'package:get_it/get_it.dart';
import 'package:local_auth/local_auth.dart';

final serviceLocator = GetIt.instance;

void setupDependencies() {
  serviceLocator.registerLazySingleton<LocalAuthentication>(
    () => LocalAuthentication(),
  );
}
