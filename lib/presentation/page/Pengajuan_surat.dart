import 'package:flutter/material.dart';
import 'package:rumakita_app2/presentation/widget/theme.dart';

class PengajuanSurat extends StatelessWidget {
  const PengajuanSurat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Kotak Masuk Surat', style: semiboldBlackTextStyle.copyWith(fontSize: 18),),
            leading: IconButton(onPressed: () {
              Navigator.pop(context);
            }, 
            icon: const Icon(Icons.arrow_back_ios)
            ),
            backgroundColor: Colors.transparent,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              SuratCard(
              title: 'Pengajuan Surat Pindah Domisili',
              subtitle: 'Lampiran surat SPD',
            ),
            ],
          ),
          ),
      ),
    );
  }
}

class SuratCard extends StatelessWidget {
  final String title;
  final String subtitle;

  SuratCard({required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      child: ListTile(
        leading: Icon(Icons.picture_as_pdf),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: IconButton(
          icon: Icon(Icons.delete),
          onPressed: () {
            // Implementasi aksi hapus surat
          },
        ),
        onTap: () {
          // Implementasi aksi membuka lampiran PDF
        },
      ),
    );
  }
}