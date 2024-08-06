import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:live_score/core/repositories/auth/auth_repository_interface.dart';

part 'login_cubit.freezed.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final AuthRepositoryInterface _authRepository;
  LoginCubit(this._authRepository) : super(const LoginState.initial());

  Future<void> login(String email, String password) async {
    emit(const LoginState.loading());
    try {
      await _authRepository.signInWithEmailAndPassword(email, password);
      emit(const LoginState.success());
    } on FirebaseAuthException catch (e) {
      emit(LoginState.error(e));
    }
  }
}
