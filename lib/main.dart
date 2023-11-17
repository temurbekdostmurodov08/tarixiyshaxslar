import 'package:flutter/material.dart';
import 'package:tarixiyshaxslar/al_page.dart';
import 'package:tarixiyshaxslar/amir_page.dart';
import 'package:tarixiyshaxslar/berun_page.dart';
import 'package:tarixiyshaxslar/bobur_page.dart';
import 'package:tarixiyshaxslar/chingiz_page.dart';
import 'package:tarixiyshaxslar/einstein_page.dart';
import 'package:tarixiyshaxslar/franklin_page.dart';
import 'package:tarixiyshaxslar/galiley_page.dart';
import 'package:tarixiyshaxslar/genri_page.dart';
import 'package:tarixiyshaxslar/gitler_page.dart';

import 'package:tarixiyshaxslar/info_page.dart';
import 'package:tarixiyshaxslar/jalol_page.dart';
import 'package:tarixiyshaxslar/kimdir_page.dart';

import 'package:tarixiyshaxslar/muhammad_page.dart';
import 'package:tarixiyshaxslar/mujiz_page.dart';

import 'package:tarixiyshaxslar/nodir_page.dart';
import 'package:tarixiyshaxslar/pyotr_page.dart';
import 'package:tarixiyshaxslar/q_page.dart';
import 'package:tarixiyshaxslar/second_page.dart';
import 'package:tarixiyshaxslar/sign_in.dart';
import 'package:tarixiyshaxslar/sign_up.dart';
import 'package:tarixiyshaxslar/sino_page.dart';
import 'package:tarixiyshaxslar/splash_page.dart';
import 'package:tarixiyshaxslar/stalin_page.dart';
import 'package:tarixiyshaxslar/termiz_page.dart';
import 'package:tarixiyshaxslar/vasko_page.dart';
import 'package:tarixiyshaxslar/xoraz_page.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashPage(),

      routes: {
        SignInPage.id:(context)=>SignInPage(),
        SignUpPage.id:(context)=>SignUpPage(),
        HomePage.id: (context) => HomePage(),
        SecondPage.id: (context) => SecondPage(),
        Qpage.id:(context)=> Qpage(),
        AmirPage.id:(context)=> AmirPage(),
      EinsteinPage.id:(context)=>EinsteinPage(),
        SplashPage.id:(context)=>SplashPage(),
        InfoPage.id:(context)=>InfoPage(),
        NodirPage.id:(context)=>NodirPage(),
        BoburPage.id:(context)=>BoburPage(),
        XorazPage.id:(context)=>XorazPage(),
        AlPage.id:(context)=>AlPage(),
        SinoPage.id:(context)=>SinoPage(),
        BerunPage.id:(context)=>BerunPage(),
        TermizPage.id:(context)=>TermizPage(),
        JalolPage.id:(context)=>JalolPage(),
        MuhammadPage.id:(context)=>MuhammadPage(),
        GitlerPage.id:(context)=>GitlerPage(),
        KimdirPage.id:(context)=>KimdirPage(),
        MujizPage.id:(context)=>MujizPage(),
        GenriPage.id:(context)=>GenriPage(),
        VaskoPage.id:(context)=>VaskoPage(),
        FranklinPage.id:(context)=>FranklinPage(),
        StalinPage.id:(context)=>StalinPage(),
        Pyotr.id:(context)=> Pyotr(),
        ChingizPage.id:(context)=>ChingizPage(),
        GalileyPage.id:(context)=>GalileyPage(),


      },
    );
  }
}
