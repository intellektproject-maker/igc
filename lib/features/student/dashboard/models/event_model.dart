import 'package:flutter/material.dart';

class EventModel {
  final String title;
  final String date;
  final String type;
  final String status;
  final IconData icon;
  final Color color;

  const EventModel({
    required this.title,
    required this.date,
    required this.type,
    required this.status,
    required this.icon,
    required this.color,
  });
}