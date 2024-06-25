import 'package:ekoton2/ui/views/hosgel.dart';
import 'package:ekoton2/ui/views/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/login_screen': (context) => LoginScreen(),  // Giriş ekranı rotası
      },
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset("assets/videos/Ekoton.mp4")
      ..initialize().then((_) {
        // Video dosyası yüklendiğinde çalıştırılacak
        setState(() {});
        _controller.play();
      });

    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginScreen()));  // Açılış ekranından sonra giriş ekranına geç
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _controller.value.isInitialized
          ? SizedBox.expand( //Video ekranın tamamını kaplasın diye
        child: FittedBox( //widgetı belirtilen şekle sığdırır
          fit: BoxFit.cover, //tüm ekranı kaplatır
          child: SizedBox(
            width: _controller.value.size.width,
            height: _controller.value.size.height,
            child: VideoPlayer(_controller),
          ),
        ),
      )
          : Center(child: CircularProgressIndicator()),
    );
  }
}
