import 'package:dawak/core/locator/service_locator.dart';
import 'package:dawak/features/auth/data/repos/auth_services.dart';
import 'package:local_auth/local_auth.dart';

class AuthByBiometric implements AuthServicesRepo {
  final LocalAuthentication authInstance =
      serviceLocator<LocalAuthentication>();

  Future<bool> canSignInBiometric() async {
    final bool canAuthenticateWithBiometrics =
        await authInstance.canCheckBiometrics;

    final bool canAuthenticate =
        canAuthenticateWithBiometrics || await authInstance.isDeviceSupported();

    return canAuthenticate;
  }

  Future<bool> isBiometricActive() async {
    final List<BiometricType> availableBiometrics = await authInstance
        .getAvailableBiometrics();

    return availableBiometrics.isNotEmpty;
  }

  @override
  Future<bool> signIn() async {
    try {
      final bool canAuthenticate = await canSignInBiometric();
      final bool isActive = await isBiometricActive();

      if (!canAuthenticate || !isActive) {
        return false;
      }

      final bool didAuthenticate = await authInstance.authenticate(
        localizedReason: 'Please authenticate',
        biometricOnly: true,
      );

      return didAuthenticate;
    } on LocalAuthException catch (e) {
      print("Biometric Error: ${e.code}");
      return false;
    }
  }
}
