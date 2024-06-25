import 'package:ekoton2/ui/views/liste.dart';
import 'package:flutter/material.dart';

import '../../renkler.dart';

class ListeGiris extends StatefulWidget {
  const ListeGiris({super.key});

  @override
  State<ListeGiris> createState() => _ListeGirisState();
}

class _ListeGirisState extends State<ListeGiris> {
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 16,
            ),
            Text("eko-do'ya Hoşgeldin!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: anaRenk,
                  fontFamily: "PT Sans",
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                )),
            Row(children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset(
                  "assets/images/enerji_logo.png",
                  width: 150,
                  height: 150,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32.0, top: 16.0),
                child: Text(
                  "Neden\nSürdürülebilirlik?",
                  style: TextStyle(
                      color: yaziRenk2,
                      fontFamily: "PT Sans",
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ]),
            Padding(
              padding:
                  const EdgeInsets.only(left: 32.0, right: 16.0, bottom: 16.0),
              child: Text(
                "Sürdürülebilir yaşam tarzı benimsemek, kaynakları korumanın yanı sıra doğal çevreyi ve gelecek nesilleri koruma konusunda önemli bir adımdır. Küçük değişikliklerle bile büyük fark yaratabiliriz!",
                style: TextStyle(
                  fontFamily: "PT Sans",
                  fontSize: 18,
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
              thickness: 1, // Çizgi kalınlığı
              height: 20, // Çizginin yüksekliği
              indent: 30, // Çizgiyi paragrafın başından uzaklaştırma
              endIndent: 30, // Çizgiyi paragrafın sonundan uzaklAŞTIRMA
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32.0, top: 16.0),
              child: Text(
                "Nereden Başlayabilirsin?",
                style: TextStyle(
                    color: yaziRenk2,
                    fontFamily: "PT Sans",
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 32.0, right: 16.0, bottom: 16.0, top: 8.0),
              child: Text(
                "Günlük yaşamında sürdürülebilirlik alışkanlıkları kazanmak için küçük adımlarla başlayabilirsin. Geri dönüşüm yapmak gibi. EkoTon, sürdürülebilirlik yolculuğunda rehberlik etmek ve ilham vermek için burada!",
                style: TextStyle(
                  fontFamily: "PT Sans",
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 32.0, right: 16.0, bottom: 16.0),
              child: Text(
                "Aşağıda bulunan örnek sürdürülebilir davranışları inceleyebilirsin!",
                style: TextStyle(
                    fontFamily: "PT Sans",
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 32.0, right: 16.0, bottom: 16.0),
              child: Text(
                "-Atıkları geri dönüşüm kategorilerine uygun olarak ayır.\n-Satın aldığın ürünlerin ambalajlarının geri dönüştürülebilir olmasına dikkat et.\n-Gereksiz yere kağıt/peçete kullanma.\n-Bitki yetiştir.\n-Biten pilleri çöp yerine atık kutusuna at.\n-Çevre dostu ulaşım yöntemlerini tercih et.\n",
                style: TextStyle(
                  fontFamily: "PT Sans",
                  fontSize: 18,
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
              thickness: 1, // Çizgi kalınlığı
              height: 20, // Çizginin yüksekliği
              indent: 30, // Çizgiyi paragrafın başından uzaklaştırma
              endIndent: 30, // Çizgiyi paragrafın sonundan uzaklAŞTIRMA
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32.0, top: 16.0),
              child: Text(
                "Sıra Sende!",
                style: TextStyle(
                    color: yaziRenk2,
                    fontFamily: "PT Sans",
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 32.0, right: 16.0, bottom: 16.0, top: 8.0),
              child: Text(
                "Hemen yeşil hareketin bir parçası olmak için ilk adımını at ve kendine sürdürülebilir görevler belirle. Bu süreçte sana yardımcı olacak listeni oluşturmak için aşağıdaki butona tıkla! ",
                style: TextStyle(
                  fontFamily: "PT Sans",
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 64.0, left: 64.0, top:16.0, bottom: 32.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TodoList()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: anaRenk,
                ),
                child: Text(
                  "eko-do",
                  style: TextStyle(fontFamily: "Homemade Apple", fontSize: 30,color: yaziRenk1),
                ),

              ),
            )
          ],
        ),

      ),

    );
  }
}
