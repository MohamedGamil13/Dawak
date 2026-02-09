import 'package:bloc/bloc.dart';
import 'package:dawak/features/auth/data/repos/auth_services.dart';
import 'package:meta/meta.dart';

part 'local_auth_state.dart';

class LocalAuthCubit extends Cubit<LocalAuthState> {
  final AuthServicesRepo authService;
  LocalAuthCubit(this.authService) : super(LocalAuthInitial());
  Future<void> signIn() async {
    emit(LocalAuthLoading());

    final AuthResult result = await authService.signIn();

    switch (result) {
      case AuthSuccess():
        emit(LocalAuthSuccess());
        break;

      case AuthFailure():
        emit(LocalAuthFailure(result.failureMessage));
        break;
    }
  }
}
