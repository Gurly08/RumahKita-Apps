import 'package:flutter/material.dart';
import 'package:rumakita_app2/presentation/widget/pengantar_keluurahan.dart';
import 'package:rumakita_app2/presentation/widget/theme.dart';

class PengantarKelurahan extends StatefulWidget {
  const PengantarKelurahan({super.key});

  @override
  State<PengantarKelurahan> createState() => _PengantarKelurahanState();
}

class _PengantarKelurahanState extends State<PengantarKelurahan> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Surat Pengantar Kelurhaan',
              style: semiboldBlackTextStyle.copyWith(fontSize: 20)),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new),
          ),
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 189,
                color: Colors.teal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Row(
                    children: [
                      Align(
                          alignment: Alignment.bottomLeft,
                          child: Image.asset('assets/images/yuni.png')),
                      Text(
                        'Hallo \nsilahkan isi data \nkamu untuk melengkapi \npengajuan surat!',
                        style: mediumWhiteTextStyle.copyWith(fontSize: 13),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 18),

              // isi konten tabel pengajuan surat pengantar kelurahan
              const Padding(padding: EdgeInsets.all(12),
                child: Column(
                  children: [
                    PengantarKeluruhan(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
