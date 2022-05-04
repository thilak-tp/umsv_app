import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'homepage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedSplashScreen(
        splash: Image.asset('assets/icons/tigerLogo.png'),
        nextScreen: HomePage(),
        duration: 3000,
        splashIconSize: 300,
        backgroundColor: Color.fromARGB(255, 51, 47, 47),
      ),
    );
  }
}
