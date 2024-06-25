import 'package:ekoton2/ui/views/hosgel.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:ekoton2/ui/views/anasayfa.dart';
import 'package:ekoton2/ui/views/listeGiris.dart';
import 'package:ekoton2/renkler.dart';

class Acilis extends StatefulWidget {
  const Acilis({Key? key}) : super(key: key);

  @override
  State<Acilis> createState() => _AcilisState();
}

class _AcilisState extends State<Acilis> {
  late User? currentUser;

  @override
  void initState() {
    super.initState();
    currentUser = FirebaseAuth.instance.currentUser;
  }

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 20),
          Center(
            child: Image.asset(
              "assets/images/giris_logo.png",
              height: 150,
              width: 150,
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Text(
              "EkoTon'a Hoş Geldin!",
              style: TextStyle(fontSize: 32, fontFamily: "PT Sans"),
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: GridView.count(
              crossAxisCount: 1, // Yalnızca 1 sütun olacak
              childAspectRatio: 2, // Öğelerin genişlik ve yükseklik oranı
              children: [
                GridItem(
                  image: 'assets/images/bilgi.png',
                  text: 'Bilgi Kartları',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Hosgel()),
                    );
                  },
                ),
                GridItem(
                  image: 'assets/images/liste.png',
                  text: 'Eko-Do',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ListeGiris()),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  final String image;
  final String text;
  final VoidCallback onTap;

  GridItem({
    required this.image,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(16.0),
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
              image,
              width: 100,
              height: 100,
            ),
            SizedBox(height: 10),
            Text(
              text,
              style: TextStyle(fontSize: 18, fontFamily: "PT Sans"),
            ),
          ],
        ),
      ),
    );
  }
}
