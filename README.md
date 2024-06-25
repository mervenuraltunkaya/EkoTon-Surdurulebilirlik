# EkoTon

Bu proje, sürdürülebilirlik hakkında bilgi vermek ve kullanıcıların sürdürülebilir alışkanlıklar edinmelerine yardımcı olmak amacıyla geliştirilmiş bir Flutter uygulamasıdır. Uygulama, Firebase kullanarak kullanıcı kaydı ve giriş işlemlerini gerçekleştirir ve bir todo listesi sunar.

## Özellikler

- **Bilgi Kartları**: Yenilenebilir enerji, geri dönüşüm ve su kaynakları hakkında bilgi kartları.
- **Eko-Do**: Sürdürülebilir alışkanlıkları hedeflemek için bir todo listesi.
- **Kullanıcı Kaydı ve Girişi**: Firebase Authentication kullanarak kullanıcı kaydı ve giriş işlemleri.

## Gereksinimler

- Flutter SDK
- Firebase hesabı ve projesi
- Bir Android veya iOS cihaz/simulator

## Kurulum

1. **Flutter SDK'yı yükleyin**: [Flutter SDK'nın yüklenmesi](https://flutter.dev/docs/get-started/install)
2. **Projenizi klonlayın**:
    ```sh
    git clone https://github.com/mervenuraltunkaya/EkoTon-Surdurulebilirlik.git
    cd EkoTon-Surdurulebilirlik
    ```
3. **Gerekli paketleri yükleyin**:
    ```sh
    flutter pub get
    ```
4. **Firebase yapılandırmasını ekleyin**:
    - Firebase konsolunda bir proje oluşturun.
    - Android ve iOS için Firebase yapılandırma dosyalarını (google-services.json ve GoogleService-Info.plist) indirin ve ilgili yerlere yerleştirin.
    - `android/build.gradle` ve `android/app/build.gradle` dosyalarını Firebase'e göre yapılandırın.
5. **Uygulamayı çalıştırın**:
    ```sh
    flutter run
    ```

## Kullanım

1. Uygulamayı açın ve bir hesap oluşturun veya mevcut bir hesapla giriş yapın.
2. Bilgi kartları sekmesine gidin ve yenilenebilir enerji, geri dönüşüm ve su kaynakları hakkında bilgi edinin.
3. Eko-Do sekmesine gidin ve sürdürülebilir alışkanlıklarınızı izlemek için todo listesi ekleyin.


## İletişim

Proje ile ilgili sorularınız veya geri bildirimleriniz için lütfen benimle iletişime geçin: [mervenuraltunkaya1@gmail.com]
