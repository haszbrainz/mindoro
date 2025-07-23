// lib/views/registration_steps/step_1_age.dart

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mindoro/viewmodels/registrasi_vm.dart ';
import 'package:mindoro/themes/custom_colors.dart';
import 'package:mindoro/themes/custom_text_styles.dart';

class Step1Age extends StatelessWidget {
  final PageController pageController;
  const Step1Age({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    // Ambil ViewModel, listen: false karena kita hanya akan memanggil fungsi
    final viewModel = context.read<RegistrationViewModel>();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 32),
          Text('Berapa umurmu?', style: CustomTextStyles.bold3xl),
          const SizedBox(height: 24),
          TextFormField(
            onChanged: (value) => viewModel.age = value, // Simpan umur ke ViewModel
            decoration: InputDecoration(
              hintText: '14',
              filled: true,
              fillColor: CustomColors.slate100.withOpacity(0.5),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.0),
                borderSide: BorderSide.none,
              ),
              suffixIcon: const Icon(Icons.check_circle, color: CustomColors.blue500),
            ),
            keyboardType: TextInputType.number,
          ),
          const Spacer(), // Mendorong tombol ke bawah
          ElevatedButton(
            onPressed: () {
              viewModel.nextStep(); // Pindah ke langkah selanjutnya di ViewModel
              pageController.nextPage( // Pindah halaman di PageView
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
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