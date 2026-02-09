abstract class AuthServicesRepo {
  Future<AuthResult> signIn();
}

sealed class AuthResult {}

class AuthSuccess extends AuthResult {}

class AuthFailure extends AuthResult {
  final String failureMessage;
  final AuthFailureType authFailureTypes;

  AuthFailure(this.failureMessage, this.authFailureTypes);
}

enum AuthFailureType {
  notSupported, //Hardware Not supported for bio only
  notEnrolled, //Hardware support but password not set
  cancelled, //user cancell auth
  failed, //pass in not corect
  unknown, //other
}
