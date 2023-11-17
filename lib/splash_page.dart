import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tarixiyshaxslar/home_page.dart';
import 'package:tarixiyshaxslar/sign_in.dart';
import 'package:tarixiyshaxslar/sign_up.dart';
class SplashPage extends StatefulWidget {
  static final String id = "splash_page";
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),
    ()=> Navigator.pushReplacement(
    context, MaterialPageRoute(builder: (context)=> HomePage()))
    );


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset("assets/lotti1.json"),
      ),

    );
  }
}
