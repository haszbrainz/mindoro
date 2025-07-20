import 'package:flutter/material.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold menyediakan kerangka dasar untuk layar (AppBar, Body, dll).
    return Scaffold(
      appBar: AppBar(
        // Judul yang akan tampil di AppBar (bilah atas).
        title: const Text('Layar Tes Sederhana'),
        backgroundColor: Colors.teal, // Ganti warna AppBar
      ),
      // Body adalah konten utama dari layar.
      body: Center(
        // Center akan menempatkan widget anaknya di tengah layar.
        child: Column(
          // Column menata widget anaknya secara vertikal (dari atas ke bawah).
          mainAxisAlignment: MainAxisAlignment.center, // Pusatkan secara vertikal
          children: <Widget>[
            // Widget untuk menampilkan teks.
            const Text(
              'Selamat Datang di Flutter!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            // Memberi sedikit jarak antara teks dan tombol.
            const SizedBox(height: 20),
            // Widget untuk tombol yang bisa ditekan.
            ElevatedButton(
              onPressed: () {
                // Aksi yang terjadi saat tombol ditekan.
                // Di sini kita hanya mencetak pesan ke konsol debug.
                print('Tombol telah ditekan!');
              },
              child: const Text('Tekan Saya'),
            ),
          ],
        ),
      ),
    );
  }
}