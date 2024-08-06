import 'package:firebase_auth/firebase_auth.dart';

abstract interface class LoginSource {
  Future<UserCredential> signInWithApple();

  Future<UserCredential> signInWithGoogle();

  Future<UserCredential> signInWithPhone({
    required String verificationId,
    required String smsCode,
  });

  Future<UserCredential> signInWithGithub();

  Future<UserCredential> signInWithEmail({
    required String email,
    required String password,
  });
}
