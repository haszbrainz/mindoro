import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mindoro/viewmodels/personalization_vm.dart';
import 'package:mindoro/themes/custom_colors.dart';
import 'package:mindoro/routes/name_routes.dart'; // <-- PERBAIKAN: Import yang hilang ditambahkan di sini

// Import halaman-halaman langkah personalisasi
import 'package:mindoro/views/personalisasi/steps/step_1_class.dart';
import 'package:mindoro/views/personalisasi/steps/step_2_lesson.dart';
import 'package:mindoro/views/personalisasi/steps/step_3_time.dart';
import 'package:mindoro/views/personalisasi/steps/step_4_info.dart';

class PersonalizationFlowScreen extends StatefulWidget {
  const PersonalizationFlowScreen({super.key});

  @override
  State<PersonalizationFlowScreen> createState() =>
      _PersonalizationFlowScreenState();
}

class _PersonalizationFlowScreenState extends State<PersonalizationFlowScreen> {
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<PersonalizationViewModel>();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: CustomColors.slate900),
          onPressed: () {
            // --- LOGIKA PERBAIKAN DI SINI ---
            if (viewModel.currentPage > 1) {
              // Jika bukan halaman pertama, kembali ke langkah sebelumnya
              viewModel.previousStep();
              _pageController.previousPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
            } else {
              // Jika ini adalah halaman pertama, kembali ke halaman intro
              Navigator.pushReplacementNamed(
                context,
                RouteNames.personalizationIntro,
              );
            }
          },
        ),
        title: SizedBox(
          height: 8,
          child: LinearProgressIndicator(
            value: viewModel.progress,
            backgroundColor: CustomColors.slate200,
            color: CustomColors.blue500,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        centerTitle: true,
      ),
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          // Daftarkan 4 halaman langkah Anda di sini
          Step1Class(pageController: _pageController),
          Step2Lesson(pageController: _pageController),
          Step3Time(pageController: _pageController), // <-- PERBAIKAN: Tambahkan Step2Lesson
          Step4Info(pageController: _pageController), // <-- PERBAIKAN: Tamb
          // Step2...(pageController: _pageController),
          // Step3...(pageController: _pageController),
          // Step4...(pageController: _pageController),
        ],
      ),
    );
  }
}
