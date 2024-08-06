import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:test_prj_ivan/data/source/remote/login_source.dart';

class LoginSourceImpl implements LoginSource {
  final FirebaseAuth _auth;

  const LoginSourceImpl({required FirebaseAuth auth}) : _auth = auth;

  @override
  Future<UserCredential> signInWithApple() async {
    final appleProvider = AppleAuthProvider()
      ..addScope('email')
      ..addScope('name');

    return _auth.signInWithProvider(appleProvider);
  }

  @override
  Future<UserCredential> signInWithEmail({
    required String email,
    required String password,
  }) async {
    return _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  @override
  Future<UserCredential> signInWithGithub() {
    final provider = GithubAuthProvider();
    return _auth.signInWithProvider(provider);
  }

  @override
  Future<UserCredential> signInWithGoogle() async {
    final googleUser = await GoogleSignIn().signIn();
    final googleAuth = await googleUser?.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    return _auth.signInWithCredential(credential);
  }

  @override
  Future<UserCredential> signInWithPhone({
    required String verificationId,
    required String smsCode,
  }) {
    final credential = PhoneAuthProvider.credential(
      verificationId: verificationId,
      smsCode: smsCode,
    );
    return _auth.signInWithCredential(credential);
  }
}
