part of 'register_cubit.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState.initial() = Initial;
  const factory RegisterState.loading() = Loading;
  const factory RegisterState.success() = Success;
  const factory RegisterState.authError(FirebaseAuthException error) = Error;
  const factory RegisterState.validationError(ValidationErrorType type) =
      ValidationError;
}
