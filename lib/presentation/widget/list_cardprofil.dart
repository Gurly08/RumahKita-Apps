import 'package:flutter/material.dart';
import 'package:rumakita_app2/presentation/widget/theme.dart';
import 'package:rumakita_app2/data/models/layanan_models.dart';

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