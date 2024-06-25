import 'package:ekoton2/models/iyi_uygulamalar.dart';
import 'package:ekoton2/models/rehberler.dart';
import 'package:flutter/material.dart';
import '../../renkler.dart';
import '../../models/konu_detay.dart';
import '../../models/tur.dart';
import 'listeGiris.dart';


class KonuDetaySayfasi extends StatelessWidget {
  final KonuDetay konuDetay; // KonuDetay sınıfı örneği

  KonuDetaySayfasi({required this.konuDetay});

  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("${konuDetay.app_title}",
          style: TextStyle(
              color: yaziRenk1,
              fontFamily: "Homemade Apple",
              fontSize: ekranGenisligi / 14),
        ),
        backgroundColor: konuDetay.bacgroundcolor,
        centerTitle: true,
      ), // Sayfa başlığı olarak konunun başlığı
      body: Padding(
        padding: const EdgeInsets.only(left: 32.0, right: 32.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16,),
              Text(
                konuDetay.baslik,
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, fontFamily: 'PT Sans'),
              ),
              SizedBox(height: 16),
              Text(
                konuDetay.tanitim,
                style: TextStyle(fontSize: 20, fontFamily: 'PT Sans'),
              ),
              SizedBox(height: 16),
              Image.asset(konuDetay.imagePath,),
              SizedBox(height: 16),
              _bolumOlustur(konuDetay.baslik+ ' Türleri', konuDetay.turler),
              _bolumOlustur('İyi Uygulamalar', konuDetay.iyiUygulamalar),
              _bolumOlustur('Rehberler', konuDetay.rehberler),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.info_outline_rounded),
            label: 'Başlıklar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: 'eko-do',
          ),
        ],
        backgroundColor: konuDetay.bacgroundcolor,
        selectedItemColor: Colors.black,
        onTap: (index) {
          // index değişkeni hangi item'a tıklanıldığını belirtir (0: Anasayfa, 1: eko-do)
          if (index == 0) {
            // Anasayfa ikonuna tıklanıldığında
            Navigator.pop(context); //mevcut sayfadan çık
          } else if (index == 1) {
            // eko-do ikonuna tıklanıldığında
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ListeGiris()), // ListeGiris yerine istediğiniz sayfa
            );
          }
        },
      ),



    );
  }

  Widget _bolumOlustur(String baslik, List<dynamic> maddeler) {
    List<Widget> widgetList = []; // Boş bir widget listesi oluşturuluyor

    // Başlık ekleniyor
    widgetList.add(
      Text(
        baslik,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, fontFamily: 'PT Sans'),
      ),
    );
    widgetList.add(SizedBox(height: 8)); // Boşluk ekleniyor

    // Maddeler listesi üzerinde dönülüyor
    for (var madde in maddeler) {
     if (madde is Tur) {
        // Eğer madde bir Tur nesnesi ise tur widgetı ekle
        widgetList.add(_turWidgetOlustur(madde));
      } else if (madde is IyiUygulamalar){
     // Eğer madde bir uygulama nesnesi ise tur widgetı ekle
     widgetList.add(_uygulamalarWidgetOlustur(madde));
     }  else if(madde is Rehberler){
       //Eğer madde bir rehber uygulama nesnesi ise rehber widgetı ekle
       widgetList.add(_rehberWidgetOlustur(madde));
     }
    }

    return Container(
      width: double.infinity, // Container'ı ekran genişliğine genişletir
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widgetList,
            ),
          ),
        ),
      ),

    );
  }



  Widget _turWidgetOlustur(Tur tur) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          tur.tur_baslik,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, fontFamily: "PT Sans"),
        ),
        SizedBox(height: 16),
        Text(
          tur.tur_aciklama,
          style: TextStyle(fontSize: 18, fontFamily: "PT Sans"),
        ),
        SizedBox(height: 16),
      ],
    );
  }

  Widget _uygulamalarWidgetOlustur(IyiUygulamalar uygulama) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          uygulama.uyg_baslik,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, fontFamily: "PT Sans"),
        ),
        SizedBox(height: 8),
        Text(
          uygulama.uyg_aciklama,
          style: TextStyle(fontSize: 16, fontFamily: "PT Sans"),
        ),
        SizedBox(height: 8),
      ],
    );
  }

  Widget _rehberWidgetOlustur(Rehberler rehber) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          rehber.rehber_baslik,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, fontFamily: "PT Sans"),
        ),
        SizedBox(height: 8),
        Text(
          rehber.rehber_aciklama,
          style: TextStyle(fontSize: 16, fontFamily: "PT Sans"),
        ),
        SizedBox(height: 8),
      ],
    );
  }

}

