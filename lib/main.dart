import 'package:flutter/material.dart';
import 'package:mindoro/views/autentikasi/loading_screen.dart'; // Ganti dengan path yang benar
import 'package:mindoro/views/autentikasi/splash_screen.dart'; // Ganti dengan path yang benar
import 'package:mindoro/views/autentikasi/registrasi_flow_screen.dart';
import 'package:mindoro/views/autentikasi/welcome_screen.dart';
import 'package:mindoro/views/autentikasi/login_screen.dart';
import 'package:mindoro/viewmodels/registrasi_vm.dart '; 
import 'package:provider/provider.dart';// Ganti dengan path yang benar
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
    // 2. Gunakan 'ChangeNotifierProvider', bukan 'ChangeNotifier'
    return ChangeNotifierProvider(
      create: (context) => RegistrationViewModel(),
      child: MaterialApp(
        title: 'Mindoro',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.white,
        ),
        debugShowCheckedModeBanner: false,

        // Mengatur rute navigasi aplikasi
        initialRoute: '/splash', // Rute awal adalah splash screen
        routes: {
          '/splash': (context) => const SplashScreen(),
          '/loading': (context) => const LoadingScreen(),
          // 3. Gunakan nama rute yang konsisten
          '/regis_flow': (context) => const RegistrationFlowScreen(),
          '/welcome': (context) => const WelcomeScreen(),
          '/login': (context) => const LoginScreen(),
        },
      ),
    );
  }
}
