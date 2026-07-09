import 'package:flutter/material.dart';

/// ===========================================================
/// IGC DESIGN SYSTEM - SHADOWS
/// ===========================================================

class AppShadows {
  AppShadows._();

  static const BoxShadow small = BoxShadow(
    color: Color(0x14000000),
    blurRadius: 6,
    offset: Offset(0, 2),
  );

  static const BoxShadow medium = BoxShadow(
    color: Color(0x1A000000),
    blurRadius: 12,
    offset: Offset(0, 4),
  );

  static const BoxShadow large = BoxShadow(
    color: Color(0x24000000),
    blurRadius: 20,
    offset: Offset(0, 8),
  );
}