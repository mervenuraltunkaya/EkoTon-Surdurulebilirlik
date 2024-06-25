import 'package:ekoton2/data/auth.dart';
import 'package:ekoton2/ui/views/acilis.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../renkler.dart';
import 'hosgel.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _sifreController = TextEditingController();
  final TextEditingController _isimController = TextEditingController();
  final TextEditingController _soyisimController = TextEditingController();
  final TextEditingController _sifreTekrarController = TextEditingController();
  bool isLogin = true;
  String? errorMesaj;
  bool isLoading = false;

  Future<void> kullaniciOlustur() async {
    setState(() {
      isLoading = true;
    });

    // Şifrelerin uyumsuzluğu kontrolü
    if (_sifreController.text != _sifreTekrarController.text) {
      setState(() {
        isLoading = false;
        errorMesaj = 'Girdiğiniz şifreler birbirleriyle uyuşmuyor.';
      });
      return;
    }

    try {
      await Auth().kullaniciOlustur(
        isim: _isimController.text,
        soyisim: _soyisimController.text,
        email: _emailController.text,
        sifre: _sifreController.text,
      );

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMesaj = getErrorMessage(e.code);
      });
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  Future<void> girisYap() async {
    setState(() {
      isLoading = true;
    });
    try {
      await Auth()
          .girisYap(email: _emailController.text, sifre: _sifreController.text);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Hosgel()),
      );
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMesaj = getErrorMessage(e.code);
      });
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  String getErrorMessage(String errorCode) {
    switch (errorCode) {
      case 'invalid-email':
        return 'Geçersiz e-posta adresi.';
      case 'wrong-password':
        return 'Yanlış şifre girdiniz.';
      case 'email-already-in-use':
        return 'Bu e-posta adresi zaten kullanımda.';
      case 'weak-password':
        return 'Şifre çok zayıf.';
      default:
        return 'Kullanıcı bulunamadı. Tekrar deneyin.';
    }
  }

  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ekoton",
          style: TextStyle(
            color: yaziRenk1,
            fontFamily: "Homemade Apple",
            fontSize: ekranGenisligi / 14,
          ),
        ),
        backgroundColor: anaRenk,
        centerTitle: true,
      ),
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
          child: Column(
            children: [
              Image.asset("assets/images/giris_logo.png"),
              if (!isLogin)
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: TextField(
                          controller: _isimController,
                          decoration: InputDecoration(
                            labelText: 'İsim',
                            labelStyle: TextStyle(color: anaRenk),
                            suffixIcon: Icon(Icons.person),
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: anaRenk),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: TextField(
                          controller: _soyisimController,
                          decoration: InputDecoration(
                            labelText: 'Soyisim',
                            labelStyle: TextStyle(color: anaRenk),
                            suffixIcon: Icon(Icons.person),
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: anaRenk),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              SizedBox(height: 16),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(color: anaRenk),
                  suffixIcon: Icon(Icons.mail_outline_outlined),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: anaRenk),
                  ),
                ),
              ),
              SizedBox(height: 16),
              TextField(
                controller: _sifreController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Şifre',
                  labelStyle: TextStyle(color: anaRenk),
                  suffixIcon: Icon(Icons.password),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: anaRenk),
                  ),
                ),
              ),
              if (!isLogin)
                SizedBox(height: 16),
              if (!isLogin)
                TextField(
                  controller: _sifreTekrarController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Şifre Tekrar',
                    labelStyle: TextStyle(color: anaRenk),
                    suffixIcon: Icon(Icons.password),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: anaRenk),
                    ),
                  ),
                ),
              SizedBox(height: 16),
              if (errorMesaj != null)
                Text(
                  errorMesaj!,
                  style: TextStyle(color: Colors.red),
                ),
              SizedBox(height: 16),
              if (isLoading)
                CircularProgressIndicator() //işlem devam ediyor, bekle
              else
                ElevatedButton(
                  onPressed: () {
                    if (isLogin) {
                      girisYap();
                    } else {
                      kullaniciOlustur();
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(ekranGenisligi / 1.3, ekranYuksekligi / 15),
                    backgroundColor: anaButton,
                  ),
                  child: isLogin
                      ? Text(
                    'Giriş Yap',
                    style: TextStyle(
                      fontFamily: 'PT Sans',
                      color: yaziRenk1,
                      fontSize: 20,
                    ),
                  )
                      : Text(
                    'Üye Ol',
                    style: TextStyle(
                      fontFamily: 'PT Sans',
                      color: yaziRenk1,
                      fontSize: 20,
                    ),
                  ),
                ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: GestureDetector(
                  child: Text(
                    isLogin
                        ? "Hesabın Yok Mu? Hemen Oluştur!"
                        : "Zaten Üye Misin? Hemen Giriş Yap!",
                    style: TextStyle(fontFamily: 'PT Sans', fontSize: 18),
                  ),
                  onTap: () {
                    setState(() {
                      isLogin = !isLogin;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  //iş bitince serbest bırak
  @override
  void dispose() {
    _emailController.dispose();
    _sifreController.dispose();
    _isimController.dispose();
    _soyisimController.dispose();
    _sifreTekrarController.dispose();
    super.dispose();
  }
}
