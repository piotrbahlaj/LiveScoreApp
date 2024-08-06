part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = Initial;
  const factory LoginState.loading() = Loading;
  const factory LoginState.error(FirebaseAuthException error) = Error;
  const factory LoginState.success() = Success;
}
