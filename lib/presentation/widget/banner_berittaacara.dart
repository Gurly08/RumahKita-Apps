import 'package:flutter/material.dart';
import 'package:rumakita_app2/data/models/berita_acara_models.dart';
import 'package:rumakita_app2/presentation/widget/beritaacara_card.dart';

class BannerBeritaacara extends StatelessWidget {
  const BannerBeritaacara({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          InkWell(
            onTap: () {},
            child: BeritaacaraCard(
              beritaacara: Beritaacara(
                  id: 1,
                  name: 'Kerja Bakti',
                  image: 'assets/images/kerjabakti.jpg'),
            ),
          ),
          const SizedBox(width: 12),
          InkWell(
            onTap: () {},
            child: BeritaacaraCard(
              beritaacara: Beritaacara(
                  id: 2,
                  name: 'Pemilihan RT',
                  image: 'assets/images/rt.png',
                  notifed: true,
                ),
            ),
          ),
          const SizedBox(width: 12),
          InkWell(
            onTap: () {},
            child: BeritaacaraCard(
              beritaacara: Beritaacara(
                  id: 3,
                  name: 'Siskamling',
                  image: 'assets/images/siskamling.jpg',
                ),
            ),
          ),
          const SizedBox(width: 12),
          InkWell(
            onTap: () {},
            child: BeritaacaraCard(
              beritaacara: Beritaacara(
                  id: 4,
                  name: 'Kemerdekaan',
                  image: 'assets/images/kemerdekaan.jpeg',
                ),
            ),
          ),
        ],
      ),
    );
  }
}