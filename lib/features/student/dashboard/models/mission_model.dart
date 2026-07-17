import 'package:flutter/material.dart';

class MissionModel {
  final String title;
  final int xp;
  final bool completed;
  final IconData icon;

  const MissionModel({
    required this.title,
    required this.xp,
    required this.completed,
    required this.icon,
  });
}