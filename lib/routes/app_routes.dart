import 'package:flutter/material.dart';
import 'package:mindoro/views/autentikasi/personalisasi_screen.dart';
import 'package:mindoro/views/autentikasi/registrasi_screen.dart';
import 'package:mindoro/views/autentikasi/welcome_screen.dart';
import 'package:mindoro/views/home/home_screen.dart';
import 'package:mindoro/views/game/game_screen.dart';
import 'package:mindoro/views/leaderboard/leaderboard.dart';
import 'package:mindoro/views/quest/quest_screen.dart';
import 'package:mindoro/views/shop/shop_screen.dart';
import 'package:mindoro/views/autentikasi/loading_screen.dart';
import 'package:mindoro/views/autentikasi/splash_screen.dart';
import 'package:mindoro/views/autentikasi/login_screen.dart'; // Ganti dengan path yang benar
import './name_routes.dart';

class AppRoutes {
  static final Map<String, WidgetBuilder> routes = {
    RouteNames.personal: (context) => const PersonalisasiScreen(),
    RouteNames.regis: (context) => const RegistrasiScreen(), // Jika ada
    RouteNames.home: (context) => const HomeScreen(),
    RouteNames.welcome: (context) => const WelcomeScreen(),
    RouteNames.game: (context) => const GameScreen(),
    RouteNames.leaderboard: (context) => const LeaderboardScreen(),// Pastikan LaporkanScreen ada
    RouteNames.quest: (context) => const QuestScreen(),
    RouteNames.shop: (context) => const ShopScreen(), 
    RouteNames.loading: (context) => const LoadingScreen(),
    RouteNames.splash: (context) => const SplashScreen(),
    RouteNames.login: (context) => const LoginScreen(), 
    // RouteNames.profil: (context) => const ProfilScreen(),     // Pastikan ProfilScreen ada
    // Tambahkan pemetaan rute lain di sini
  };
}
