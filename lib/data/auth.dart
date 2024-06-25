import 'package:firebase_auth/firebase_auth.dart';

class Auth{
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  User? get currentUser => _firebaseAuth.currentUser;
  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  //Üye Ol
  Future<void> kullaniciOlustur({
    required String isim,
    required String soyisim,
    required email,
    required sifre,
  }) async{
    await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: sifre);
  }

  //Giriş
  Future<void> girisYap({
    required email,
    required sifre,
  }) async{
    await _firebaseAuth.signInWithEmailAndPassword(email: email, password: sifre);
  }

  //Çıkış
  Future<void> cikisYap() async {
    await _firebaseAuth.signOut();
  }


}