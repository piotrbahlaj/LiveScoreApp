import 'package:firebase_auth/firebase_auth.dart';
import 'package:live_score/core/constants/firebase_auth_error_codes.dart';
import 'package:live_score/core/constants/validation_error.dart';
import 'package:live_score/core/extensions/localization/app_localizations_context.dart';

class AuthError {
  final String message;

  AuthError(this.message);
  factory AuthError.fromFirebaseError(FirebaseAuthException e) {
    switch (e.code) {
      case FirebaseAuthErrorCodes.emailAlreadyInUse:
        return AuthError(translations.emailAlreadyInUse);
      case FirebaseAuthErrorCodes.invalidEmail:
        return AuthError(translations.invalidEmail);
      case FirebaseAuthErrorCodes.userNotFound:
        return AuthError(translations.userNotFound);
      case FirebaseAuthErrorCodes.wrongPassword:
        return AuthError(translations.wrongPassword);
      default:
        return AuthError(translations.defaultError);
    }
  }
  factory AuthError.fromValidationError(ValidationErrorType type) {
    switch (type) {
      case ValidationErrorType.passwordsDoNotMatch:
        return AuthError(translations.passwordsDoNotMatch);
      case ValidationErrorType.passwordTooShort:
        return AuthError(translations.passwordTooShort);
      case ValidationErrorType.usernameTooShort:
        return AuthError(translations.userNameTooShort);
      case ValidationErrorType.emailInvalid:
        return AuthError(translations.invalidEmail);
      default:
        return AuthError(translations.defaultError);
    }
  }
}
