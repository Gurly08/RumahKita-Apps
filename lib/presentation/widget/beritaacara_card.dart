import 'package:flutter/material.dart';
import 'package:rumakita_app2/data/models/berita_acara_models.dart';
import 'package:rumakita_app2/presentation/widget/theme.dart';

class BeritaacaraCard extends StatelessWidget {
  const BeritaacaraCard({super.key, required this.beritaacara});

  final Beritaacara beritaacara;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        width: 180,
        height: 120,
        color: Colors.teal[700],
        child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                   beritaacara.image, 
                    height: 80,
                    width: 180,
                    fit: BoxFit.cover,
                  ),
                    beritaacara.notifed
                      ? Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            height: 30,
                            width: 35,
                            decoration: BoxDecoration(
                              color: purpleColor,
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                              ),
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Container(
                                padding: const EdgeInsets.only(
                                  left: 4,
                                ),
                                height: 24,
                                width: 24,
                                child: const Icon(
                                  Icons.notification_important,
                                  color: Colors.yellow,
                                ),
                              ),
                            ),
                          ),
                        )
                      : Container(),
                ],
              ),
              const SizedBox(
                height: 11,
              ),
              Text(
                beritaacara.name,
                  style: semiboldwhitetext.copyWith(
                  fontSize: 12,
                ),
              ),
            ],
          ),
      ),
    );
  }
}
