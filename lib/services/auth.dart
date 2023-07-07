import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthBase {
  User? get currentUser;

  Stream<User?> authStateChanges();

  Future<User?> loginWithEmailAndPassword(String email, String password);

  Future<User?> registerWithEmailAndPassword(String email, String password);

  Future<void> logOut();
}

class Auth implements AuthBase {
  final _firebaseAuth = FirebaseAuth.instance;

  @override
  User? get currentUser => _firebaseAuth.currentUser;

  @override
  Stream<User?> authStateChanges() => _firebaseAuth.authStateChanges();

  @override
  Future<User?> loginWithEmailAndPassword(String email, String password) async {
    final userAuth = await _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
    return userAuth.user;
  }

  @override
  Future<User?> registerWithEmailAndPassword(
      String email, String password) async {
    final userAuth = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password);
    return userAuth.user;
  }

  @override
  Future<void> logOut() async => await _firebaseAuth.signOut();
}
