import 'package:flutter/material.dart';
import 'package:todo_list/data/models/layanan_models.dart';
import 'package:todo_list/presentation/widget/theme.dart';

class CardLayanan extends StatelessWidget {
  const CardLayanan({super.key, required this.layanan});

  final Layanan layanan;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 112,
      width: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(layanan.imageUrl),
          Text(
            layanan.name,
            textAlign: TextAlign.center,
            style: regularBlackTextStyle.copyWith(fontSize: 8),
          ),
        ],
      ),
    );
  }
}
