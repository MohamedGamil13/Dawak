import 'package:dawak/core/storage/local_storage.dart';
import 'package:dawak/core/storage/shared_pref.dart';
import 'package:dawak/features/auth/data/auth_by_biometric.dart';
import 'package:dawak/features/auth/data/repos/auth_services.dart';
import 'package:get_it/get_it.dart';
import 'package:local_auth/local_auth.dart';

final serviceLocator = GetIt.instance;

void setupDependencies() {
  serviceLocator.registerLazySingleton<LocalAuthentication>(
    () => LocalAuthentication(),
  );
  serviceLocator.registerLazySingleton<AuthServicesRepo>(
    () => AuthByBiometric(),
  );
  serviceLocator.registerLazySingleton<LocalStorage>(() => SharedPref());
}
