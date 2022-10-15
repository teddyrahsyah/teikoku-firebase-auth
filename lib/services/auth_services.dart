import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth;

  AuthService(this._auth);

  Stream<User?> get authStateChange => _auth.authStateChanges();

  Future<String> register({
    required String email,
    required String password,
  }) async {
    try {
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
      return "User Created";
    } on FirebaseAuthException catch (e) {
      return e.message!;
    } catch (e) {
      rethrow;
    }
  }

  Future<String> logIn({
    required String email,
    required String password,
  }) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      return "Signed In";
    } on FirebaseAuthException catch (e) {
      return e.message!;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> logOut() async {
    await _auth.signOut();
  }
}


