// lib/views/registration_flow_screen.dart

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mindoro/themes/custom_colors.dart';
import 'package:mindoro/viewmodels/registrasi_vm.dart ';
// Import untuk setiap halaman langkah
import 'package:mindoro/views/autentikasi/step1age.dart';
import 'package:mindoro/views/autentikasi/step2name.dart';
import 'package:mindoro/views/autentikasi/step3email.dart';
import 'package:mindoro/views/autentikasi/step4password.dart';

class RegistrationFlowScreen extends StatelessWidget {
  const RegistrationFlowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => RegistrationViewModel(),
      child: const _RegistrationFlowScreenBody(),
    );
  }
}

class _RegistrationFlowScreenBody extends StatefulWidget {
  const _RegistrationFlowScreenBody();

  @override
  State<_RegistrationFlowScreenBody> createState() =>
      _RegistrationFlowScreenBodyState();
}

class _RegistrationFlowScreenBodyState
    extends State<_RegistrationFlowScreenBody> {
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<RegistrationViewModel>();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: CustomColors.slate900),
          onPressed: () {
            if (viewModel.currentPage > 1) {
              viewModel.previousStep();
              _pageController.previousPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
            } else {
              Navigator.of(context).pop();
            }
          },
        ),
        title: SizedBox(
          height: 8,
          child: LinearProgressIndicator(
            value: viewModel.progress, // Nilai progress bar dari ViewModel
            backgroundColor: CustomColors.slate200,
            color: CustomColors.blue500, // Warna biru sesuai custom colors
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        centerTitle: true,
      ),
      body: PageView(
        controller: _pageController,
        // Matikan scroll dengan geser, hanya bisa lewat tombol
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Step1Age(pageController: _pageController),
          Step2name(pageController: _pageController),
          Step3email(pageController: _pageController),
          Step4password(pageController: _pageController),
        ],
      ),
    );
  }
}
