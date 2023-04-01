import 'package:airplane_app/ui/pages/bonus_page.dart';
import 'package:airplane_app/ui/pages/checkout_page.dart';
import 'package:airplane_app/ui/pages/choose_seat_page.dart';
import 'package:airplane_app/ui/pages/detail_page.dart';
import 'package:airplane_app/ui/pages/get_started_page.dart';
import 'package:airplane_app/ui/pages/main_page.dart';
import 'package:airplane_app/ui/pages/sign_up_page.dart';
import 'package:airplane_app/ui/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: SplashPage(),
      routes: {
        '/': (context) => const SplashPage(),
        '/get-started': (context) => const GetStaredPage(),
        '/sign-up': (context) => const SignUpPage(),
        '/bonus': (context) => const BonusPage(),
        '/main-page': (context) => const mainPage(),
        '/choose-seat-page': (context) => const chooseSeatPage(),
        '/checkout-page': (context) => const checkoutPage(),

      },
    );
  }
}
