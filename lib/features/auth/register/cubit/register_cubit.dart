import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:live_score/core/repositories/auth/auth_repository_interface.dart';

part 'register_cubit.freezed.dart';
part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final AuthRepositoryInterface _authRepository;
  RegisterCubit(this._authRepository) : super(const RegisterState.initial());

  Future<void> register(
      String email, String password, String confirmPassword) async {
    if (password != confirmPassword) {
      emit(const RegisterState.error('Passwords do not match'));
      return;
    }
    emit(const RegisterState.loading());
    try {
      final user =
          await _authRepository.signInWithEmailAndPassword(email, password);
      emit(const RegisterState.success('You have successfully signed up'));
    } catch (e) {
      emit(RegisterState.error(e.toString()));
    }
  }
}
