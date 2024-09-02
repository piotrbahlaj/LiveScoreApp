import 'package:firebase_auth/firebase_auth.dart';
import 'package:live_score/core/repositories/auth/auth_repository_interface.dart';

class AuthRepository implements AuthRepositoryInterface {
  final FirebaseAuth auth;

  AuthRepository(this.auth);

  @override
  Future<User?> signUpWithEmailAndPassword(
      String email, String password) async {
    UserCredential credential = await auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    return credential.user;
  }

  @override
  Future<User?> signInWithEmailAndPassword(
      String email, String password) async {
    UserCredential credential = await auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return credential.user;
  }

  @override
  Future<void> logOut() async {
    await auth.signOut();
  }

  @override
  Future<void> resetPassword(String email) async {
    try {
      await auth.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      throw FirebaseAuthException(code: e.code);
    }
  }

  @override
  Future<void> deleteAccount() async {
    try {
      await auth.currentUser!.delete();
    } on FirebaseAuthException catch (e) {
      throw FirebaseAuthException(code: e.code);
    }
  }
}
