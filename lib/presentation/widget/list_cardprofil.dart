import 'package:flutter/material.dart';
import 'package:todo_list/data/models/layanan_models.dart';
import 'package:todo_list/presentation/widget/theme.dart';

class CardProfil extends StatelessWidget {
  const CardProfil({super.key, required this.layanan});

  final Layanan layanan;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 325,
      decoration: BoxDecoration(
        color: layanan.color,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Image.asset(layanan.imageUrl,height: 40, width: 40),
            const SizedBox(width: 18),
            Text(
              layanan.name,
              textAlign: TextAlign.center,
              style: regularBlackTextStyle.copyWith(fontSize: 15),
            ),
            const Spacer(),
            Text(layanan.jumlah?.toString() ?? '', style: regularBlackTextStyle),
          ],
        ),
      ),
    );
  }
}