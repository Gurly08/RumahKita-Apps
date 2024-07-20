import 'package:flutter/material.dart';

class BannerNews extends StatefulWidget {
  const BannerNews({super.key});

  @override
  State<BannerNews> createState() => _BannerNewsState();
}

class _BannerNewsState extends State<BannerNews> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Riwayat anda',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            TextButton(
              onPressed: () {},
              child: Text('Lihat Semua', style: TextStyle(color: Colors.black)),
            ),
          ],
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              NewsCard(
                title: 'Hari Bahagia ku',
                description:
                    'Disini aku mengucapkan janji setia dan memilih jalan serta wanita yang tepat, Dihadapa-Hyo Aku bersumpah.',
                category: 'Wedding',
                date: '30 Agustus 2021',
                imagePath: 'assets/images/news1.png', // Replace with your image path
              ),
              const SizedBox(height: 16),
              NewsCard(
                title: 'Kebangkitan Garuda',
                description:
                    'Seru banget hari ini bisa bermain banyaknya dan berkompetisi bersama teman - teman',
                category: 'Pesta Rakyat',
                date: '17 Agustus 2024',
                imagePath: 'assets/images/news2.png', // Replace with your image path
              ),
              const SizedBox(height: 16),
              NewsCard(
                title: 'Festival Juni',
                description:
                    'Akhirnya bisa menang juga di festival bulan juni ini, menjadi juara 1 di lomba dari team Kabupaten Ic',
                category: 'Lomba',
                date: '27 Juni 2024',
                imagePath: 'assets/images/news3.png', // Replace with your image path
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
          },
          child: const Icon(Icons.add),
          backgroundColor: Colors.teal,
        ),
      ),
    );
  }
}

class NewsCard extends StatelessWidget {
  final String title;
  final String description;
  final String category;
  final String date;
  final String imagePath;

  const NewsCard({
    required this.title,
    required this.description,
    required this.category,
    required this.date,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                imagePath,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[700],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        category,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal,
                        ),
                      ),
                      Text(
                        date,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey[700],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() => runApp(const BannerNews());
