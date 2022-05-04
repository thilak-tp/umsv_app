import 'package:flutter/material.dart';

import 'splashscreen.dart';

void main() => runApp(Umsv());

class Umsv extends StatefulWidget {
  const Umsv({Key? key}) : super(key: key);

  @override
  _UmsvState createState() => _UmsvState();
}

class _UmsvState extends State<Umsv> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen();
  }
}
