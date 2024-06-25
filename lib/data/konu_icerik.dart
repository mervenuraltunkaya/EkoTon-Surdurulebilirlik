import 'package:ekoton2/renkler.dart';
import 'package:ekoton2/models/iyi_uygulamalar.dart';
import 'package:ekoton2/models/rehberler.dart';
import '../models/konu_detay.dart';
import '../models/tur.dart';

final KonuDetay atikYonetimi = KonuDetay(
  app_title: 'griton',
  bacgroundcolor: atikRenk,
  baslik: 'Geri Dönüşüm',
  tanitim: 'Geri dönüşüm, kullanılmış veya atık malzemelerin işlenerek tekrar kullanılabilir hale getirilmesi sürecidir. ',
  imagePath: 'assets/images/g_donusum.jpg',
  turler: [
    Tur(tur_baslik: 'Kağıt Geri Dönüşümü', tur_aciklama: 'Gazete, dergi, karton kutular ve ofis kağıtları gibi kağıt ürünlerinin toplanması, ayrıştırılması ve tekrar ham madde olarak kullanılması sürecidir. Bu şekilde yeni kağıt ürünleri üretilebilir.'),
    Tur(tur_baslik: 'Cam Geri Dönüşümü:', tur_aciklama: 'Cam şişeler ve kavanozların toplanması, eritilmesi ve yeni cam ürünleri üretmek için kullanılması sürecidir. Cam, geri dönüştürüldüğünde aynı kalitede tekrar kullanılabilir.'),
    Tur(tur_baslik: 'Metal  Geri Dönüşümü:', tur_aciklama: 'Alüminyum, çelik ve demir gibi metallerin toplanması, eritilmesi ve yeni metal ürünleri yapımında kullanılması sürecidir. Metal geri dönüşümü, enerji tasarrufu sağlar ve doğal kaynakların korunmasına yardımcı olur.'),
    Tur(tur_baslik: 'Plastik  Geri Dönüşümü:', tur_aciklama: 'PET şişeler, plastik torbalar, ambalaj malzemeleri ve oyuncaklar gibi plastik ürünlerin toplanması, ayrıştırılması ve geri dönüştürülerek yeni plastik ürünler yapılması sürecidir. Plastik geri dönüşümü, plastik atıkların çevreye olan zararını azaltmaya yardımcı olur.'),
    Tur(tur_baslik: 'Elektronik   Geri Dönüşümü:', tur_aciklama: 'Kullanılmış elektronik cihazların (bilgisayarlar, cep telefonları, televizyonlar vb.) toplanması, bileşenlerine ayrıştırılması ve geri dönüşüm veya yeniden kullanım için işlenmesi sürecidir. Elektronik atık geri dönüşümü, tehlikeli maddelerin çevreye sızmasını önler ve değerli metallerin geri kazanılmasını sağlar.'),
  ],
  iyiUygulamalar: [
    IyiUygulamalar(uyg_baslik: 'Atıkları Ayrıştırma', uyg_aciklama: 'Evde, iş yerinde ve toplumda atıkları kağıt, cam, metal ve plastik gibi farklı türlerine ayırmak. Bu, geri dönüşüm sürecinin daha verimli olmasını sağlar.'),
    IyiUygulamalar(uyg_baslik: 'Bilinçlendirme Kampanyaları', uyg_aciklama: 'Toplumu geri dönüşümün önemi konusunda bilgilendirmek ve farkındalık oluşturmak için kampanyalar düzenlemek.'),
    IyiUygulamalar(uyg_baslik: 'Ürün Seçiminde Dikkat', uyg_aciklama: 'Geri dönüşüme uygun ambalajlı ürünleri tercih etmek ve geri dönüşüme katkı sağlayan ürünleri desteklemek.'),
    IyiUygulamalar(uyg_baslik: 'Atık Azaltma Stratejileri', uyg_aciklama: 'Atık oluşumunu azaltmak için ambalaj kullanımını azaltmak, yeniden kullanılabilir ürünleri tercih etmek ve bilinçli tüketim alışkanlıkları geliştirmek.'),
  ],
  rehberler: [
    Rehberler(rehber_baslik: 'Geri Dönüşüm Rehberi', rehber_aciklama:' Geri dönüşüm için dikkat edilmesi gereken bazı konuları aşağıda inceleyebilirsiniz.\n-Atıkları Doğru Şekilde Ayırın\n-Ambalajların Hacmini Küçültün\n-Plastik Kapakları Ayrı Toplayın\n-Pil ve Elektronik Atıkları Geri Dönüştürün, Çöpe Atmayın!\n-Atıkları Geri Dönüşüm Merkezlerine Teslim Edin'),
    Rehberler(rehber_baslik: 'Kompost Yapım Rehberi', rehber_aciklama:'Kompost, organik atıkların doğal çürüme süreci sonucunda oluşan besleyici bir toprak iyileştiricisidir. Kompost, topraktaki besin maddelerini artırır, toprağın su tutma kapasitesini artırır, pH dengesini düzenler ve toprağın yapısını iyileştirir. Bu nedenle, kompost, bahçe toprağını zenginleştirmek, bitki sağlığını artırmak ve doğal döngüyü desteklemek için önemli bir araçtır.\n\nİşte adım adım kompost yapma rehberi:\n-Havalandırılmış ve sızdırmaz bir kap seçin.\n\n-Organik atıklar toplayın. Bunlar mutfak atıkları, bahçe atıkları vb. organik maddeler olabilir.\n\n-Organik atıkları kompost kabına yerleştirin. Yerleştirirken yeşil (azot içeren) ve kahverengi (karbon içeren) malzemeler arasında denge kurmaya özen gösterin. Yeşil malzemeler, hızlı bir şekilde çürüyerek sıcaklık ve nem seviyesini artırırken, kahverengi malzemeler hava sirkülasyonunu sağlar ve kokuyu engeller.\n\n-Kompostun iyi çalışması için düzenli olarak havalandırılması önemlidir. Bu, kompostun içine hava girmesini sağlar. Ayrıca, kompostun nemli olması da önemlidir. Çok kuru olursa çürüme yavaşlar, çok ıslak olursa ise kötü kokular oluşabilir.\n\n-Kompostunuzu düzenli olarak karıştırın.\n\n-Kompost olgunlaşma sürecine girdiğinde, kahverengi ve yeşil malzemeler ayrışır ve toprak benzeri bir yapı oluşturur. Bu noktada, kompostu bitkilerinizin toprağına karıştırarak kullanabilirsiniz. '),
  ],
);

final KonuDetay yenilenebilirEnerji = KonuDetay(
  bacgroundcolor: enerjiRenk,
  app_title: 'Sarıton',
  baslik: 'Yenilenebilir Enerji',
  tanitim: 'Yenilenebilir enerji, doğal süreçler tarafından sürekli olarak yenilenen ve tükenmeyen enerji kaynaklarından elde edilen enerjidir. Bu tür enerji kaynakları, fosil yakıtlar gibi sınırlı olmayan ve çevreye daha az zarar veren kaynaklardır.',
  imagePath: 'assets/images/yenilenebilir-enerji.png',
  turler: [
    Tur(tur_baslik: 'Güneş Enerjisi', tur_aciklama: 'Güneş enerjisi, güneş ışığını kullanarak elektrik veya ısı üretmektir. Güneş panelleri sayesinde elde edilen bu enerji, bol miktarda bulunur ve çevreye zarar vermez.'),
    Tur(tur_baslik: 'Rüzgar Enerjisi', tur_aciklama: 'Rüzgar enerjisi, rüzgar türbinleriyle rüzgarın hareketinden elektrik üretmektir. Türbinler döndükçe enerji üretilir. Bu yöntem, geniş alanlarda kurulabilir ve düşük maliyetlidir.'),
    Tur(tur_baslik: 'Hideroelektrik Enerji', tur_aciklama: 'Hidroelektrik enerji, suyun akış gücünü kullanarak elektrik üretmektir. Barajlar ve nehirler üzerine kurulan tesisler, suyun gücünü elektriğe çevirir. Bu yöntem, sürekli ve temiz bir enerji kaynağıdır.'),
  ],
  iyiUygulamalar: [
    IyiUygulamalar(uyg_baslik: 'Güneş Paneli Kullanımı', uyg_aciklama:  'Çatınızda güneş panelleri kullanarak evinizin elektrik ihtiyacını karşılayabilirsiniz.'),
    IyiUygulamalar(uyg_baslik: 'Rüzgar Enerjisi Kullanımı', uyg_aciklama:  'Eğer mümkünse, kırsal alanlarda veya deniz kıyılarında rüzgar türbinleri kurarak elektrik üretebilirsiniz.',),
  ],
  rehberler: [
    Rehberler(rehber_baslik: 'Enerji Tüketimini Azaltın ', rehber_aciklama:'Öncelikle enerji tüketimini azaltmaya çalışın. Enerji tasarruflu cihazlar kullanın, gereksiz ışıkları kapatın ve elektrikli cihazları kullanmadığınız zamanlarda fişten çekin.',),
  ],
);

final KonuDetay suKaynaklari = KonuDetay(
  app_title: 'Maviton',
  baslik: 'Su Kaynakları',
  tanitim: 'Su kaynakları, yeryüzünde suyun bulunduğu ve kullanıldığı çeşitli doğal rezervlerdir. Su kaynakları, insanların içme suyu ihtiyacını karşılamak, tarım sulaması, sanayi, enerji üretimi ve ekosistemlerin sürdürülebilirliği gibi birçok alanda hayati önem taşır.',
  imagePath: 'assets/images/turkiyede-su-kalitesi.jpg',
  bacgroundcolor: suRenk,
  turler: [
    Tur(tur_baslik: 'Yüzey Suları', tur_aciklama: 'Yüzey suları, yeryüzünde bulunan ve görülebilen su kütleleridir. Bunlar şunları içerir:\n-Nehirler ve Akarsular: Su akışı olan, genellikle dağlardan denizlere veya göllere doğru akan su yollarıdır.\n-Göller: Karaların iç kısımlarında bulunan, genellikle tatlı su içeren büyük su kütleleridir.\n-Barajlar ve Rezervuarlar: İnsan yapımı yapıların arkasında biriken su kütleleridir. Bu yapılar, suyun depolanması, enerji üretimi ve sulama için kullanılır.'),
    Tur(tur_baslik: 'Yeraltı Suları', tur_aciklama: 'Yeraltı suları, yerin altında bulunan su rezervleridir. Bunlar genellikle iki şekilde bulunur:\n-Akiferler: Su geçirmez kaya katmanları arasında bulunan ve su depolayan yer altı katmanlarıdır. Kuyular aracılığıyla bu sulardan yararlanılır.\n-Yeraltı Nehirleri: Yerin altında akan su yollarıdır, ancak bunlar nadirdir ve genellikle mağaralarla ilişkilidir.'),
    Tur(tur_baslik: 'Atmosferik Sular', tur_aciklama: 'Atmosferik sular, atmosferde bulunan su buharı ve yağışlardır. Bu su kaynakları şu şekildedir:\n-Yağmur ve Kar: Atmosferde yoğunlaşan su buharının yağmur veya kar şeklinde yeryüzüne düşmesiyle oluşur.\n-Sis ve Çiy: Atmosferdeki su buharının yoğuşarak sis veya çiy olarak ortaya çıkmasıdır.'),
  ],
  iyiUygulamalar: [
    IyiUygulamalar(uyg_baslik: 'Su Tasarrufu', uyg_aciklama: 'Su tasarrufu, suyu verimli kullanarak israfı önleme ve su tüketimini azaltma yöntemidir. Bu, su kaynaklarını korur, çevreye katkıda bulunur ve maliyetleri düşürür.'),
    IyiUygulamalar(uyg_baslik: 'Su Kirliliğini Önleme', uyg_aciklama: 'Su kirliliğinin önlenmesi, su kaynaklarına zararlı maddelerin girmesini engelleyerek suyu temiz ve kullanışlı tutmaktır. Bu, sanayi atıklarının arıtılması, kimyasal kullanımının kontrolü ve doğru atık yönetimi ile sağlanır. Amaç, çevreyi ve insan sağlığını korumaktır.'),
    IyiUygulamalar(uyg_baslik: 'Eğitim & Farkındalık Artırma', uyg_aciklama: 'Su kirliliğinin önlenmesi, su kaynaklarının temiz ve sağlıklı kalmasını sağlamak için hayati öneme sahiptir. Bu amaçla, toplumun su kaynaklarıyla ilgili bilinç düzeyinin artırılması büyük önem taşır. Toplumu su kaynaklarının önemi ve korunması konusunda bilinçlendirmek için eğitim programları düzenlenebilir ve okullarda su kaynakları ve çevre koruma konularında dersler verilebilir.' ),
  ],
  rehberler: [
    Rehberler(rehber_baslik: 'Su Kullanım Rehberi', rehber_aciklama: 'Suyun verimli kullanmak için aşağıdaki önerileri uygulayabilirsiniz.\n-Kısa Duş Alın\n-Musluğu Açık Bırakmayın\n-Sızıntıları Onarın\n-Bulaşıkları Makinede Yıkayın\n-Su Geri Dönüşüm Sistemleri Kullanın\n-Su Tüketiminizi Takip Edin\n-Sanayi Atıklarını Yönetin'),
  ],
);

