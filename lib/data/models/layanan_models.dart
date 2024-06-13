import 'package:flutter/widgets.dart';

class Layanan{
  int id;
  String imageUrl;
  String name;
  Color? color;
  int? jumlah;

  Layanan ({
    required this.id,
    required this.imageUrl,
    required this.name,
    this.color,
    this.jumlah,
  });
}