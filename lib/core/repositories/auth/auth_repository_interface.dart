import 'package:firebase_auth/firebase_auth.dart';

abstract interface class AuthRepositoryInterface {
  Future<User?> signUpWithEmailAndPassword(String email, String password);
  Future<void> signInWithEmailAndPassword(String email, String password);
  Future<void> logOut();
  Future<void> resetPassword(String email);
}
