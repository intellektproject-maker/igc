import 'package:flutter/material.dart';

class StatModel {
  final String title;
  final String value;
  final String subtitle;
  final IconData icon;
  final Color color;

  const StatModel({
    required this.title,
    required this.value,
    required this.subtitle,
    required this.icon,
    required this.color,
  });
}