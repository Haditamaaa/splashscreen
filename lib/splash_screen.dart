import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:splashscreen/homepage.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen ({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
        SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

        Future.delayed(const Duration(seconds: 5), () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => const HomeScreen()));
        });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: HexColor('#FEF6E6'),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('image/logos.png'),
          ],
        ),
      ),
    );
  }
}