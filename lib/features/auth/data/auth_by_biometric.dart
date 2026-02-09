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
  Future<AuthResult> signIn() async {
    try {
      final canAuthenticate = await canSignInBiometric();

      if (!canAuthenticate) {
        return AuthFailure(
          'Device does not support biometrics',
          AuthFailureType.notSupported,
        );
      }

      final isActive = await isBiometricActive();

      if (!isActive) {
        return AuthFailure(
          'No biometrics enrolled',
          AuthFailureType.notEnrolled,
        );
      }

      final didAuthenticate = await authInstance.authenticate(
        localizedReason: 'Please authenticate',
        biometricOnly: true,
      );

      if (didAuthenticate) {
        return AuthSuccess();
      } else {
        return AuthFailure('Authentication failed', AuthFailureType.failed);
      }
    } on LocalAuthException catch (e) {
      return AuthFailure(
        e.description ?? 'Biometric error',
        AuthFailureType.unknown,
      );
    } catch (_) {
      return AuthFailure('Unexpected error occurred', AuthFailureType.unknown);
    }
  }
}
