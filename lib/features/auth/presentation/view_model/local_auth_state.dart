part of 'local_auth_cubit.dart';

@immutable
abstract class LocalAuthState {}

class LocalAuthInitial extends LocalAuthState {}

class LocalAuthFailure extends LocalAuthState {
  final String errorMessage;
  LocalAuthFailure(this.errorMessage);
}

class LocalAuthSuccess extends LocalAuthState {}

class LocalAuthLoading extends LocalAuthState {}
