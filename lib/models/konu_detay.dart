import 'dart:ui';
import 'package:ekoton2/models/iyi_uygulamalar.dart';
import 'package:ekoton2/models/rehberler.dart';
import 'package:ekoton2/models/tur.dart';

class KonuDetay {
  final String app_title; //konu temasına bağlı başlık
  final String baslik; // Konunun başlığı
  final String tanitim; // Konunun tanıtımı
  final String imagePath; //içerik resmi
  final List<Tur> turler; // Konunun içinde yer alan türler
  final List<IyiUygulamalar> iyiUygulamalar; // İyi uygulama örnekleri
  final List<Rehberler> rehberler; // Rehberler ve ipuçları
  final Color bacgroundcolor; //konu teması için renk


  KonuDetay({
    required this.app_title,
    required this.bacgroundcolor,
    required this.baslik,
    required this.tanitim,
    required this.imagePath,
    required this.turler,
    required this.iyiUygulamalar,
    required this.rehberler,
  });
}
