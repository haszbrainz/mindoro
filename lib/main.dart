// lib/main.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // <-- Pastikan import ini ada

// Import semua file yang dibutuhkan
import 'package:mindoro/viewmodels/registrasi_vm.dart';
import 'package:mindoro/viewmodels/personalization_vm.dart';
import 'package:mindoro/views/autentikasi/splash_screen.dart';
import 'package:mindoro/views/autentikasi/loading_screen.dart';
import 'package:mindoro/views/autentikasi/welcome_screen.dart';
import 'package:mindoro/views/autentikasi/login_screen.dart';
import 'package:mindoro/views/personalisasi/personalisasi_intro_screen.dart';
import 'package:mindoro/views/personalisasi/personalisasi_flow_screen.dart';  
import 'package:mindoro/views/autentikasi/registrasi_flow_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Gunakan MultiProvider untuk mendaftarkan lebih dari satu ViewModel
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => RegistrationViewModel()),
        ChangeNotifierProvider(create: (_) => PersonalizationViewModel()),
      ],
      child: MaterialApp(
        title: 'Mindoro',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: '/splash',
        routes: {
          '/splash': (context) => const SplashScreen(),
          '/loading': (context) => const LoadingScreen(),
          '/welcome': (context) => const WelcomeScreen(),
          '/login': (context) => const LoginScreen(),
          '/regis_flow': (context) => const RegistrationFlowScreen(),
          '/personalization_intro': (context) => const PersonalizationIntroScreen(),
          '/personalization_flow': (context) => const PersonalizationFlowScreen(),
        },
      ),
    );
  }
}
