import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mindoro/themes/custom_colors.dart'; // Sesuaikan path jika perlu

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Atur timer untuk pindah halaman setelah 3 detik
    Timer(const Duration(seconds: 1), () {
      // Pindah ke halaman loading dan hapus halaman splash dari tumpukan navigasi
      Navigator.pushReplacementNamed(context, '/loading');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Atur warna background menggunakan CustomColors yang sudah kita buat
      backgroundColor: CustomColors.slate900,
      body: Center(
        // Tampilkan logo dari folder assets di tengah layar
        child: Image.asset(
          'assets/images/Splash_screen.png',
          width: 226, // Sesuaikan ukuran logo
        ),
      ),
    );
  }
}