import 'package:flutter/material.dart';
import 'package:mindoro/views/autentikasi/loading_screen.dart'; // Ganti dengan path yang benar
import 'package:mindoro/views/autentikasi/splash_screen.dart'; // Ganti dengan path yang benar
import 'package:mindoro/views/autentikasi/registrasi_screen.dart';
import 'package:mindoro/views/autentikasi/welcome_screen.dart';
import 'package:mindoro/views/autentikasi/login_screen.dart'; // Ganti dengan path yang benar
// import 'package:flutter/material.dart';
// import 'package:pui/routes/app_routes.dart';
// import 'themes/main_theme.dart';
// import 'routes/app_routes.dart';
// import 'routes/name_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mindoro',
      theme: ThemeData(
        // Anda bisa mengatur tema utama aplikasi di sini nanti
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false, // Menghilangkan banner debug

      // Mengatur rute navigasi aplikasi
      initialRoute: '/splash', // Rute awal adalah splash screen
      routes: {
        '/splash': (context) => const SplashScreen(),
        '/loading': (context) => const LoadingScreen(),
        '/registrasi': (context) => const RegistrasiScreen(),
        '/welcome': (context) => const WelcomeScreen(),
        '/login' : (context) => const LoginScreen(),
        // Daftarkan halaman lain di sini nanti
      },
    );
  }
}