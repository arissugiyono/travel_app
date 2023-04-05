import 'package:airplane_app/cubit/pages_cubit.dart';
import 'package:airplane_app/ui/pages/bonus_page.dart';
import 'package:airplane_app/ui/pages/checkout_page.dart';
import 'package:airplane_app/ui/pages/choose_seat_page.dart';
import 'package:airplane_app/ui/pages/detail_page.dart';
import 'package:airplane_app/ui/pages/get_started_page.dart';
import 'package:airplane_app/ui/pages/main_page.dart';
import 'package:airplane_app/ui/pages/sign_up_page.dart';
import 'package:airplane_app/ui/pages/splash_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PagesCubit(),
        ),
      ],
      child: MaterialApp(
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
      ),
    );
  }
}
