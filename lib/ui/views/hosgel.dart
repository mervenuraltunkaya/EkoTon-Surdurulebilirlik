import 'package:flutter/material.dart';
import '../../renkler.dart';
import 'anasayfa.dart';
import 'listeGiris.dart';

class Hosgel extends StatefulWidget {
  const Hosgel({super.key});

  @override
  State<Hosgel> createState() => _HosgelState();
}

class _HosgelState extends State<Hosgel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ekoton",
          style: TextStyle(
            color: yaziRenk1,
            fontFamily: "Homemade Apple",
            fontSize: 24,
          ),
        ),
        backgroundColor: anaRenk,
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 150),
                Image.asset(
                  'assets/images/giris_logo.png',
                  width: 150,
                  height: 150,
                ),
                SizedBox(height: 32),
                Text(
                  'Ekoton',
                  style: TextStyle(
                    color: anaRenk,
                    fontFamily: 'Homemade Apple',
                    fontSize: 24,
                  ),
                ),
              ],
            ),
            SizedBox(height: 120),
            Padding(
              padding: const EdgeInsets.only(left: 64.0),
              child: ListTile(
                leading: Icon(Icons.exit_to_app, color: Colors.red),
                title: Text(
                  'Çıkış Yap',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 18,
                  ),
                ),
                onTap: () {
                  // Kullanıcı çıkışı sağla ve giriş ekranına yönlendir
                  Navigator.pushReplacementNamed(context, '/login_screen');
                },
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 16,
            ),
            Text(
              "EkoTon'a Hoşgeldin!",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: anaRenk,
                fontFamily: "PT Sans",
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 32.0, top: 16.0),
                  child: Text(
                    "EkoTon'da\nNe Var?",
                    style: TextStyle(
                      color: yaziRenk2,
                      fontFamily: "PT Sans",
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 16.0,
                    left: 48.0,
                    bottom: 20.0,
                  ),
                  child: Image.asset(
                    "assets/images/giris.jpg",
                    width: 100, // Daha küçük bir genişlik
                    height: 100, // Daha küçük bir yükseklik
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 32.0,
                right: 16.0,
                bottom: 16.0,
              ),
              child: Text(
                "EkoTon, sürdürülebilirlik konusunda farkındalık yaratmak "
                    "ve sana rehberlik etmek için burada! ",
                style: TextStyle(
                  fontFamily: "PT Sans",
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32.0, top: 16.0),
              child: Text(
                "EkoTon'da",
                style: TextStyle(
                  color: yaziRenk2,
                  fontFamily: "PT Sans",
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 32.0,
                right: 16.0,
                bottom: 16.0,
                top: 8.0,
              ),
              child: Text(
                "Sürdürülebilirlik konuları hakkında bilgi alabilir dilersen kendine bu konuda bir eko-do hazırlayabilirsin!",
                style: TextStyle(
                  fontFamily: "PT Sans",
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 32.0,
                right: 16.0,
                bottom: 16.0,
              ),
              child: Text(
                "Sende sürdürülebilirliğin bir parçası olmak istiyorsan haydi EkoTon'la!",
                style: TextStyle(
                  fontFamily: "PT Sans",
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
              thickness: 1, // Çizgi kalınlığı
              height: 20, // Çizginin yüksekliği
              indent: 30, // Çizgiyi paragrafın başından uzaklaştırma
              endIndent: 30, // Çizgiyi paragrafın sonundan uzaklaştırma
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Anasayfa()),
                      );
                    },
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/bilgi.png',
                            width: 60, // Daha küçük bir genişlik
                            height: 60, // Daha küçük bir yükseklik
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Bilgi Kartları',
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'PT Sans',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ListeGiris()),
                      );
                    },
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/liste.png',
                            width: 60, // Daha küçük bir genişlik
                            height: 60, // Daha küçük bir yükseklik
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Eko-Do',
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'PT Sans',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
