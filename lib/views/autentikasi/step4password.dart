import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mindoro/viewmodels/registrasi_vm.dart';
import 'package:mindoro/themes/custom_colors.dart';
import 'package:mindoro/themes/custom_text_styles.dart';
import 'package:mindoro/routes/name_routes.dart'; // 1. Import name_routes

class Step4password extends StatelessWidget {
  final PageController pageController;
  const Step4password({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    // Ambil ViewModel, listen: false karena kita hanya akan memanggil fungsi
    final viewModel = context.read<RegistrationViewModel>();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 8),
          Text('Buat kata sandi yang aman', style: CustomTextStyles.bold2xl),
          const SizedBox(height: 16),
          TextFormField(
            onChanged: (value) => viewModel.password = value, // Simpan ke viewModel.password
            obscureText: true, // Sembunyikan input password
            decoration: InputDecoration(
              hintText: '∗∗∗∗∗∗∗∗∗∗∗∗∗∗',
              filled: true,
              fillColor: CustomColors.slate50,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.0),
                borderSide: BorderSide.none,
              ),
            ),
            keyboardType: TextInputType.visiblePassword,
          ),
          const Spacer(), // Mendorong tombol ke bawah
          ElevatedButton(
            onPressed: () {
              // Lakukan proses akhir registrasi (misal: kirim data ke server)
              // print('Umur: ${viewModel.age}');
              // print('Nama: ${viewModel.name}');
              // print('Email: ${viewModel.email}');
              // print('Password: ${viewModel.password}');
              // ... logika kirim data ...

              // Jika berhasil, pindah ke alur personalisasi
              Navigator.pushNamedAndRemoveUntil(
                context,
                RouteNames.personalizationIntro, // Arahkan ke rute yang benar
                (route) => false, // Hapus semua halaman sebelumnya
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: CustomColors.blue500,
              minimumSize: const Size(double.infinity, 52),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24.0),
              ),
            ),
            child: Text('Lanjut', style: CustomTextStyles.demiBoldBase.copyWith(color: Colors.white)),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
