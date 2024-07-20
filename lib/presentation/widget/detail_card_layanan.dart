import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:rumakita_app2/data/models/layanan_models.dart';
import 'package:rumakita_app2/presentation/widget/theme.dart';
=======
import 'package:todo_list/data/models/layanan_models.dart';
import 'package:todo_list/presentation/widget/theme.dart';
>>>>>>> 7cb3adbe34f0c90e7e8ba986e6d46a8f87dd4066

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
