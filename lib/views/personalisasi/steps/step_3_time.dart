import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mindoro/viewmodels/personalization_vm.dart';
import 'package:mindoro/themes/custom_colors.dart';
import 'package:mindoro/themes/custom_text_styles.dart';

class Step3Time extends StatefulWidget {
  final PageController pageController;
  const Step3Time({super.key, required this.pageController});

  @override
  State<Step3Time> createState() => _Step3TimeState();
}

class _Step3TimeState extends State<Step3Time> {
  // State lokal untuk menyimpan pilihan yang sedang dipilih di halaman ini
  String? _selectedClass;

  // Daftar pilihan jawaban
  final List<String> _classOptions = [
    'I (Satu)', 'II (Dua)', 'III (Tiga)',
    'IV (Empat)', 'V (Lima)', 'VI (Enam)'
  ];

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<PersonalizationViewModel>();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 32),
          // Pertanyaan
          Row(
            children: [
              const Icon(Icons.door_front_door_outlined, size: 32, color: CustomColors.slate500),
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  'Wah, kamu menempuh kelas berapa saat ini?',
                  style: CustomTextStyles.mediumXl,
                ),
              ),
            ],
          ),
          const SizedBox(height: 32),

          // Pilihan Jawaban
          ..._classOptions.map((option) {
            bool isSelected = _selectedClass == option;
            return Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: _ChoiceButton(
                text: option,
                isSelected: isSelected,
                onTap: () {
                  setState(() {
                    _selectedClass = option;
                  });
                },
              ),
            );
          }).toList(),

          const Spacer(), // Mendorong tombol ke bawah

          // Tombol Selanjutnya
          ElevatedButton(
            // Tombol hanya aktif jika sudah ada jawaban yang dipilih
            onPressed: _selectedClass == null ? null : () {
              // Simpan jawaban ke ViewModel
              viewModel.selectedClass = _selectedClass;
              // Pindah ke halaman berikutnya
              viewModel.nextStep();
              widget.pageController.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: CustomColors.blue500,
              disabledBackgroundColor: CustomColors.slate200,
              minimumSize: const Size(double.infinity, 52),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24.0),
              ),
            ),
            child: Text('Selanjutnya', style: CustomTextStyles.demiBoldBase.copyWith(color: Colors.white)),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}

// Widget Pilihan Jawaban yang bisa digunakan kembali
class _ChoiceButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  const _ChoiceButton({
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        decoration: BoxDecoration(
          color: isSelected ? CustomColors.blue100.withOpacity(0.5) : Colors.transparent,
          borderRadius: BorderRadius.circular(16.0),
          border: Border.all(
            color: isSelected ? CustomColors.blue500 : CustomColors.slate200,
            width: 2,
          ),
        ),
        child: Text(
          text,
          style: CustomTextStyles.mediumBase.copyWith(
            color: isSelected ? CustomColors.blue700 : CustomColors.slate700,
          ),
        ),
      ),
    );
  }
}
