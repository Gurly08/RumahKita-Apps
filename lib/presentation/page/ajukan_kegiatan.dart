import 'package:flutter/material.dart';
import 'package:rumakita_app2/presentation/widget/Jadawalkegiatan_table.dart';
import 'package:rumakita_app2/presentation/widget/card_berita.dart';
import 'package:rumakita_app2/presentation/widget/theme.dart';

class AjukanKegiatan extends StatefulWidget {
  const AjukanKegiatan({super.key});

  @override
  State<AjukanKegiatan> createState() => _AjukanKegiatanState();
}

class _AjukanKegiatanState extends State<AjukanKegiatan> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ajukan Kegiatan',
              style: semiboldBlackTextStyle.copyWith(fontSize: 20)),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios)),
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
                          child: Image.asset("assets/images/lina.png")),
                      Text(
                        "Hai!, Aku Lina \nKegiatan apa yang ingin \nkamu ajukan hari ini ?",
                        style: mediumWhiteTextStyle.copyWith(fontSize: 13),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 18),

              //Isi konten tabel jadwal kegiatan 
              
              const Padding(padding: EdgeInsets.all(12),
                child: Column(
                  children: [
                    JadwalKegiatan(),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const BannerNews(),));
          },
          backgroundColor: Colors.teal,
          child: const Icon(Icons.add),
          ),
      ),
    );
  }
}
