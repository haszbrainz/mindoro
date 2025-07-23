import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mindoro/themes/custom_colors.dart'; // Sesuaikan path
import 'package:mindoro/themes/custom_text_styles.dart'; // Sesuaikan path

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // State untuk mengontrol visibilitas password
  bool _isPasswordObscured = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // PERUBAHAN UTAMA: Tambahkan properti ini
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Masukkan detail anda',
          style: CustomTextStyles.mediumLg.copyWith(color: CustomColors.slate900),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: CustomColors.slate900),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      // PERUBAHAN UTAMA: Hapus SingleChildScrollView dan LayoutBuilder
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              const SizedBox(height: 32),

              // 1. Input Fields
              TextFormField(
                decoration: _buildInputDecoration(hintText: 'Masukkan email kamu'),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16),
              TextFormField(
                obscureText: _isPasswordObscured,
                decoration: _buildInputDecoration(
                  hintText: '∗∗∗∗∗∗∗∗∗∗∗∗∗∗',
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isPasswordObscured ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                      color: CustomColors.slate400,
                    ),
                    onPressed: () {
                      setState(() {
                        _isPasswordObscured = !_isPasswordObscured;
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(height: 32),

              // 2. Tombol Utama
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: CustomColors.blue700,
                      offset: const Offset(0, 4),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(24.0),
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: CustomColors.blue500,
                    foregroundColor: Colors.white,
                    minimumSize: const Size(double.infinity, 52),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    elevation: 0,
                  ),
                  child: Text('Masuk', style: CustomTextStyles.demiBoldBase),
                ),
              ),
              const SizedBox(height: 16),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: CustomColors.blue500, width: 1.5),
                  minimumSize: const Size(double.infinity, 52),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                ),
                child: Text(
                  'Lupa kata sandi',
                  style: CustomTextStyles.demiBoldBase.copyWith(color: CustomColors.blue500),
                ),
              ),

              const Spacer(), // Spacer akan berfungsi normal sekarang

              // 3. Tombol Social Login
              _buildSocialLoginButton(
                icon: Icons.g_mobiledata,
                label: 'Masuk dengan Google',
              ),
              const SizedBox(height: 16),
              _buildSocialLoginButton(
                icon: Icons.apple,
                label: 'Masuk dengan Apple',
              ),
              const SizedBox(height: 24),

              // 4. Teks Disclaimer
              _buildDisclaimerText(),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method lainnya tetap sama...
  // ... (_buildInputDecoration, _buildSocialLoginButton, _buildDisclaimerText)

  InputDecoration _buildInputDecoration({required String hintText, Widget? suffixIcon}) {
    return InputDecoration(
      hintText: hintText,
      hintStyle: CustomTextStyles.regularBase.copyWith(color: CustomColors.slate400),
      suffixIcon: suffixIcon,
      filled: true,
      fillColor: CustomColors.slate100.withOpacity(0.5),
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.0),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.0),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.0),
        borderSide: BorderSide.none,
      ),
    );
  }

  Widget _buildSocialLoginButton({required IconData icon, required String label}) {
    return OutlinedButton.icon(
      onPressed: () {},
      icon: Icon(icon, color: CustomColors.slate800),
      label: Text(
        label,
        style: CustomTextStyles.mediumBase.copyWith(color: CustomColors.slate800),
      ),
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: CustomColors.slate200),
        minimumSize: const Size(double.infinity, 52),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
    );
  }

  Widget _buildDisclaimerText() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: CustomTextStyles.regularSm.copyWith(color: CustomColors.slate400),
        children: <TextSpan>[
          const TextSpan(text: 'Dengan masuk ke Mindoro, anda setuju dengan '),
          TextSpan(
            text: 'Ketentuan',
            style: CustomTextStyles.demiBoldSm.copyWith(color: CustomColors.blue500),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                // Tambahkan navigasi ke halaman Ketentuan Layanan
              },
          ),
          const TextSpan(text: ' dan '),
          TextSpan(
            text: 'kebijakan privasi',
            style: CustomTextStyles.demiBoldSm.copyWith(color: CustomColors.blue500),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                // Tambahkan navigasi ke halaman Kebijakan Privasi
              },
          ),
          const TextSpan(text: ' kami'),
        ],
      ),
    );
  }
}