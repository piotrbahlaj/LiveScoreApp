import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:live_score/core/constants/validation_error.dart';
import 'package:live_score/core/repositories/auth/auth_repository_interface.dart';

part 'register_cubit.freezed.dart';
part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final AuthRepositoryInterface _authRepository;

  RegisterCubit(this._authRepository) : super(const RegisterState.initial());

  Future<void> register(String username, String email, String password,
      String confirmPassword) async {
    emit(const RegisterState.loading());

    if (password != confirmPassword) {
      emit(const RegisterState.validationError(
          ValidationErrorType.passwordsDoNotMatch));
      return;
    } else if (password.length < 8) {
      emit(const RegisterState.validationError(
          ValidationErrorType.passwordTooShort));
      return;
    } else if (username.length < 2) {
      emit(const RegisterState.validationError(
          ValidationErrorType.usernameTooShort));
      return;
    } else if (email.isEmpty || !email.contains('@') || !email.contains('.')) {
      emit(const RegisterState.validationError(
          ValidationErrorType.emailInvalid));
      return;
    }

    try {
      await _authRepository.signUpWithEmailAndPassword(email, password);
      emit(const RegisterState.success());
    } on FirebaseAuthException catch (e) {
      emit(RegisterState.authError(e));
    }
  }
}
