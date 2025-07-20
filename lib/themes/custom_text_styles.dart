import 'package:flutter/material.dart';

class CustomTextStyles {
  CustomTextStyles._();
  static const String _fontFamily = 'VisbyRoundCF';
  static const TextStyle _baseStyle = TextStyle(
    fontFamily: _fontFamily,
  );

  // --- Light (w300) ---
  static final TextStyle lightXs = _baseStyle.copyWith(fontSize: 12, fontWeight: FontWeight.w300, height: 1.25);
  static final TextStyle lightSm = _baseStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w300, height: 1.25);
  static final TextStyle lightBase = _baseStyle.copyWith(fontSize: 16, fontWeight: FontWeight.w300, height: 1.5);
  static final TextStyle lightLg = _baseStyle.copyWith(fontSize: 18, fontWeight: FontWeight.w300, height: 1.5);
  static final TextStyle lightXl = _baseStyle.copyWith(fontSize: 20, fontWeight: FontWeight.w300, height: 1.5);
  static final TextStyle light2xl = _baseStyle.copyWith(fontSize: 24, fontWeight: FontWeight.w300, height: 1.5);
  static final TextStyle light3xl = _baseStyle.copyWith(fontSize: 30, fontWeight: FontWeight.w300, height: 1.25);
  static final TextStyle light4xl = _baseStyle.copyWith(fontSize: 36, fontWeight: FontWeight.w300, height: 1.25);
  static final TextStyle light5xl = _baseStyle.copyWith(fontSize: 48, fontWeight: FontWeight.w300, height: 1.0);
  static final TextStyle light6xl = _baseStyle.copyWith(fontSize: 60, fontWeight: FontWeight.w300, height: 1.0);
  static final TextStyle light7xl = _baseStyle.copyWith(fontSize: 72, fontWeight: FontWeight.w300, height: 1.0);
  static final TextStyle light8xl = _baseStyle.copyWith(fontSize: 96, fontWeight: FontWeight.w300, height: 1.0);
  static final TextStyle light9xl = _baseStyle.copyWith(fontSize: 128, fontWeight: FontWeight.w300, height: 1.0);

  // --- Regular (w400) ---
  static final TextStyle regularXs = _baseStyle.copyWith(fontSize: 12, fontWeight: FontWeight.w400, height: 1.25);
  static final TextStyle regularSm = _baseStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w400, height: 1.25);
  static final TextStyle regularBase = _baseStyle.copyWith(fontSize: 16, fontWeight: FontWeight.w400, height: 1.5);
  static final TextStyle regularLg = _baseStyle.copyWith(fontSize: 18, fontWeight: FontWeight.w400, height: 1.5);
  static final TextStyle regularXl = _baseStyle.copyWith(fontSize: 20, fontWeight: FontWeight.w400, height: 1.5);
  static final TextStyle regular2xl = _baseStyle.copyWith(fontSize: 24, fontWeight: FontWeight.w400, height: 1.5);
  static final TextStyle regular3xl = _baseStyle.copyWith(fontSize: 30, fontWeight: FontWeight.w400, height: 1.25);
  static final TextStyle regular4xl = _baseStyle.copyWith(fontSize: 36, fontWeight: FontWeight.w400, height: 1.25);
  static final TextStyle regular5xl = _baseStyle.copyWith(fontSize: 48, fontWeight: FontWeight.w400, height: 1.0);
  static final TextStyle regular6xl = _baseStyle.copyWith(fontSize: 60, fontWeight: FontWeight.w400, height: 1.0);
  static final TextStyle regular7xl = _baseStyle.copyWith(fontSize: 72, fontWeight: FontWeight.w400, height: 1.0);
  static final TextStyle regular8xl = _baseStyle.copyWith(fontSize: 96, fontWeight: FontWeight.w400, height: 1.0);
  static final TextStyle regular9xl = _baseStyle.copyWith(fontSize: 128, fontWeight: FontWeight.w400, height: 1.0);

  // --- Medium (w500) ---
  static final TextStyle mediumXs = _baseStyle.copyWith(fontSize: 12, fontWeight: FontWeight.w500, height: 1.25);
  static final TextStyle mediumSm = _baseStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w500, height: 1.25);
  static final TextStyle mediumBase = _baseStyle.copyWith(fontSize: 16, fontWeight: FontWeight.w500, height: 1.5);
  static final TextStyle mediumLg = _baseStyle.copyWith(fontSize: 18, fontWeight: FontWeight.w500, height: 1.5);
  static final TextStyle mediumXl = _baseStyle.copyWith(fontSize: 20, fontWeight: FontWeight.w500, height: 1.5);
  static final TextStyle medium2xl = _baseStyle.copyWith(fontSize: 24, fontWeight: FontWeight.w500, height: 1.5);
  static final TextStyle medium3xl = _baseStyle.copyWith(fontSize: 30, fontWeight: FontWeight.w500, height: 1.25);
  static final TextStyle medium4xl = _baseStyle.copyWith(fontSize: 36, fontWeight: FontWeight.w500, height: 1.25);
  static final TextStyle medium5xl = _baseStyle.copyWith(fontSize: 48, fontWeight: FontWeight.w500, height: 1.0);
  static final TextStyle medium6xl = _baseStyle.copyWith(fontSize: 60, fontWeight: FontWeight.w500, height: 1.0);
  static final TextStyle medium7xl = _baseStyle.copyWith(fontSize: 72, fontWeight: FontWeight.w500, height: 1.0);
  static final TextStyle medium8xl = _baseStyle.copyWith(fontSize: 96, fontWeight: FontWeight.w500, height: 1.0);
  static final TextStyle medium9xl = _baseStyle.copyWith(fontSize: 128, fontWeight: FontWeight.w500, height: 1.0);

  // --- DemiBold (w600) ---
  static final TextStyle demiBoldXs = _baseStyle.copyWith(fontSize: 12, fontWeight: FontWeight.w600, height: 1.25);
  static final TextStyle demiBoldSm = _baseStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w600, height: 1.25);
  static final TextStyle demiBoldBase = _baseStyle.copyWith(fontSize: 16, fontWeight: FontWeight.w600, height: 1.5);
  static final TextStyle demiBoldLg = _baseStyle.copyWith(fontSize: 18, fontWeight: FontWeight.w600, height: 1.5);
  static final TextStyle demiBoldXl = _baseStyle.copyWith(fontSize: 20, fontWeight: FontWeight.w600, height: 1.5);
  static final TextStyle demiBold2xl = _baseStyle.copyWith(fontSize: 24, fontWeight: FontWeight.w600, height: 1.5);
  static final TextStyle demiBold3xl = _baseStyle.copyWith(fontSize: 30, fontWeight: FontWeight.w600, height: 1.25);
  static final TextStyle demiBold4xl = _baseStyle.copyWith(fontSize: 36, fontWeight: FontWeight.w600, height: 1.25);
  static final TextStyle demiBold5xl = _baseStyle.copyWith(fontSize: 48, fontWeight: FontWeight.w600, height: 1.0);
  static final TextStyle demiBold6xl = _baseStyle.copyWith(fontSize: 60, fontWeight: FontWeight.w600, height: 1.0);
  static final TextStyle demiBold7xl = _baseStyle.copyWith(fontSize: 72, fontWeight: FontWeight.w600, height: 1.0);
  static final TextStyle demiBold8xl = _baseStyle.copyWith(fontSize: 96, fontWeight: FontWeight.w600, height: 1.0);
  static final TextStyle demiBold9xl = _baseStyle.copyWith(fontSize: 128, fontWeight: FontWeight.w600, height: 1.0);

  // --- Bold (w700) ---
  static final TextStyle boldXs = _baseStyle.copyWith(fontSize: 12, fontWeight: FontWeight.w700, height: 1.25);
  static final TextStyle boldSm = _baseStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w700, height: 1.25);
  static final TextStyle boldBase = _baseStyle.copyWith(fontSize: 16, fontWeight: FontWeight.w700, height: 1.5);
  static final TextStyle boldLg = _baseStyle.copyWith(fontSize: 18, fontWeight: FontWeight.w700, height: 1.5);
  static final TextStyle boldXl = _baseStyle.copyWith(fontSize: 20, fontWeight: FontWeight.w700, height: 1.5);
  static final TextStyle bold2xl = _baseStyle.copyWith(fontSize: 24, fontWeight: FontWeight.w700, height: 1.5);
  static final TextStyle bold3xl = _baseStyle.copyWith(fontSize: 30, fontWeight: FontWeight.w700, height: 1.25);
  static final TextStyle bold4xl = _baseStyle.copyWith(fontSize: 36, fontWeight: FontWeight.w700, height: 1.25);
  static final TextStyle bold5xl = _baseStyle.copyWith(fontSize: 48, fontWeight: FontWeight.w700, height: 1.0);
  static final TextStyle bold6xl = _baseStyle.copyWith(fontSize: 60, fontWeight: FontWeight.w700, height: 1.0);
  static final TextStyle bold7xl = _baseStyle.copyWith(fontSize: 72, fontWeight: FontWeight.w700, height: 1.0);
  static final TextStyle bold8xl = _baseStyle.copyWith(fontSize: 96, fontWeight: FontWeight.w700, height: 1.0);
  static final TextStyle bold9xl = _baseStyle.copyWith(fontSize: 128, fontWeight: FontWeight.w700, height: 1.0);

  // --- ExtraBold (w800) ---
  static final TextStyle extraBoldXs = _baseStyle.copyWith(fontSize: 12, fontWeight: FontWeight.w800, height: 1.25);
  static final TextStyle extraBoldSm = _baseStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w800, height: 1.25);
  static final TextStyle extraBoldBase = _baseStyle.copyWith(fontSize: 16, fontWeight: FontWeight.w800, height: 1.5);
  static final TextStyle extraBoldLg = _baseStyle.copyWith(fontSize: 18, fontWeight: FontWeight.w800, height: 1.5);
  static final TextStyle extraBoldXl = _baseStyle.copyWith(fontSize: 20, fontWeight: FontWeight.w800, height: 1.5);
  static final TextStyle extraBold2xl = _baseStyle.copyWith(fontSize: 24, fontWeight: FontWeight.w800, height: 1.5);
  static final TextStyle extraBold3xl = _baseStyle.copyWith(fontSize: 30, fontWeight: FontWeight.w800, height: 1.25);
  static final TextStyle extraBold4xl = _baseStyle.copyWith(fontSize: 36, fontWeight: FontWeight.w800, height: 1.25);
  static final TextStyle extraBold5xl = _baseStyle.copyWith(fontSize: 48, fontWeight: FontWeight.w800, height: 1.0);
  static final TextStyle extraBold6xl = _baseStyle.copyWith(fontSize: 60, fontWeight: FontWeight.w800, height: 1.0);
  static final TextStyle extraBold7xl = _baseStyle.copyWith(fontSize: 72, fontWeight: FontWeight.w800, height: 1.0);
  static final TextStyle extraBold8xl = _baseStyle.copyWith(fontSize: 96, fontWeight: FontWeight.w800, height: 1.0);
  static final TextStyle extraBold9xl = _baseStyle.copyWith(fontSize: 128, fontWeight: FontWeight.w800, height: 1.0);

  // --- Black (w900) ---
  static final TextStyle blackXs = _baseStyle.copyWith(fontSize: 12, fontWeight: FontWeight.w900, height: 1.25);
  static final TextStyle blackSm = _baseStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w900, height: 1.25);
  static final TextStyle blackBase = _baseStyle.copyWith(fontSize: 16, fontWeight: FontWeight.w900, height: 1.5);
  static final TextStyle blackLg = _baseStyle.copyWith(fontSize: 18, fontWeight: FontWeight.w900, height: 1.5);
  static final TextStyle blackXl = _baseStyle.copyWith(fontSize: 20, fontWeight: FontWeight.w900, height: 1.5);
  static final TextStyle black2xl = _baseStyle.copyWith(fontSize: 24, fontWeight: FontWeight.w900, height: 1.5);
  static final TextStyle black3xl = _baseStyle.copyWith(fontSize: 30, fontWeight: FontWeight.w900, height: 1.25);
  static final TextStyle black4xl = _baseStyle.copyWith(fontSize: 36, fontWeight: FontWeight.w900, height: 1.25);
  static final TextStyle black5xl = _baseStyle.copyWith(fontSize: 48, fontWeight: FontWeight.w900, height: 1.0);
  static final TextStyle black6xl = _baseStyle.copyWith(fontSize: 60, fontWeight: FontWeight.w900, height: 1.0);
  static final TextStyle black7xl = _baseStyle.copyWith(fontSize: 72, fontWeight: FontWeight.w900, height: 1.0);
  static final TextStyle black8xl = _baseStyle.copyWith(fontSize: 96, fontWeight: FontWeight.w900, height: 1.0);
  static final TextStyle black9xl = _baseStyle.copyWith(fontSize: 128, fontWeight: FontWeight.w900, height: 1.0);
}