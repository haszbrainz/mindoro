import 'package:flutter/material.dart';
import 'package:mindoro/themes/custom_colors.dart';
import 'package:mindoro/themes/custom_text_styles.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Spacer(),

              // 1. Gambar Ilustrasi Utama
              Image.asset(
                'assets/images/welcome.png',
                height: 390, // Sesuaikan ukuran gambar
              ),
              const SizedBox(height: 50),

              // 2. Blok Teks Deskripsi
              Text(
                'Penyelesaian masalah interaktif yang efektif dan menyenangkan. Jadilah lebih pintar dalam 15 menit sehari.',
                textAlign: TextAlign.center,
                style: CustomTextStyles.regularLg.copyWith(
                  color: CustomColors.slate700,
                ),
              ),
              const Spacer(flex: 2),

              // Tombol "Lanjutkan" dengan desain asli
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: CustomColors.blue700, // <-- Desain shadow dikembalikan ke asli
                      offset: const Offset(0, 4), // Posisi shadow Y=4
                    ),
                  ],
                  borderRadius: BorderRadius.circular(24),
                ),
                child: SizedBox(
                  width: 382,
                  height: 46,
                  child: ElevatedButton(
                    onPressed: () {
                      // LOGIKA NAVIGASI DITAMBAHKAN DI SINI
                      Navigator.pushNamed(context, '/regis_flow');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: CustomColors.blue600,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                    ),
                    child: Text(
                      'Lanjutkan',
                      style: CustomTextStyles.demiBoldBase,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Tombol "Saya sudah punya akun"
              TextButton(
                onPressed: () {
                  // LOGIKA NAVIGASI DITAMBAHKAN DI SINI
                  Navigator.pushNamed(context, '/login');
                },
                child: Text(
                  'Saya sudah punya akun',
                  style: CustomTextStyles.demiBoldBase.copyWith(
                    color: CustomColors.slate800,
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}