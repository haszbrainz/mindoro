import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mindoro/viewmodels/personalization_vm.dart';
import 'package:mindoro/themes/custom_colors.dart';

// Import halaman-halaman langkah personalisasi
import 'package:mindoro/views/personalisasi/steps/step_1_class.dart';
// import 'package:mindoro/views/personalisasi/steps/step_2_...';
// import 'package:mindoro/views/personalisasi/steps/step_3_...';
// import 'package:mindoro/views/personalisasi/steps/step_4_...';

class PersonalizationFlowScreen extends StatefulWidget {
  const PersonalizationFlowScreen({super.key});

  @override
  State<PersonalizationFlowScreen> createState() => _PersonalizationFlowScreenState();
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
        // Tombol X untuk keluar dari alur
        leading: IconButton(
          icon: const Icon(Icons.close, color: CustomColors.slate900),
          onPressed: () => Navigator.of(context).pop(),
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
          // Step2...(pageController: _pageController),
          // Step3...(pageController: _pageController),
          // Step4...(pageController: _pageController),
        ],
      ),
    );
  }
}
