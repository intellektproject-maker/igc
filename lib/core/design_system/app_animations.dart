import 'package:flutter/material.dart';

/// ===========================================================
/// IGC DESIGN SYSTEM - ANIMATIONS
/// ===========================================================

class AppAnimations {
  AppAnimations._();

  static const Duration fast = Duration(milliseconds: 150);
  static const Duration medium = Duration(milliseconds: 300);
  static const Duration slow = Duration(milliseconds: 500);

  static const Curve curve = Curves.easeInOut;
}