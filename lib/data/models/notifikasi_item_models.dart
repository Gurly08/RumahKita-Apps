import 'package:flutter/material.dart';

class NotificationItem {
  const NotificationItem({
    required this.text,
    required this.icon,
    required this.status,
  });

  final String text;
  final IconData icon;
  final String status;
}
