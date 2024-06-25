import 'package:flutter/material.dart';
import '../../renkler.dart';
import '../../data/konu_icerik.dart';
import 'konu_detay_sayfa.dart';

class BilgiKartlari extends StatefulWidget {
  const BilgiKartlari({super.key});

  @override
  State<BilgiKartlari> createState() => _BilgiKartlariState();
}

class _BilgiKartlariState extends State<BilgiKartlari> {
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
            fontSize: 24,
          ),
        ),
        backgroundColor: anaRenk,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/agac.png",
              width: ekranGenisligi * 0.8,
              height: ekranYuksekligi * 0.3,
            ),
            SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              KonuDetaySayfasi(konuDetay: yenilenebilirEnerji),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 5.0,
                      backgroundColor: anaButton,
                    ),
                    child: Container(
                      height: ekranYuksekligi / 10,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 8),
                          Text(
                            "Yenilenebilir Enerji",
                            style: TextStyle(
                              fontSize: 18,
                              color: yaziRenk1,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              KonuDetaySayfasi(konuDetay: atikYonetimi),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 5.0,
                      backgroundColor: anaButton,
                    ),
                    child: Container(
                      height: ekranYuksekligi / 10,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Text(
                            "Geri Dönüşüm",
                            style: TextStyle(
                              fontSize: 18,
                              color: yaziRenk1,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              KonuDetaySayfasi(konuDetay: suKaynaklari),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 5.0,
                      backgroundColor: anaButton,
                    ),
                    child: Container(
                      height: ekranYuksekligi / 10,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 8),
                          Text(
                            "Su Kaynakları",
                            style: TextStyle(
                              fontSize: 18,
                              color: yaziRenk1,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
