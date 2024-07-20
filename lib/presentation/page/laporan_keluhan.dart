import 'package:flutter/material.dart';
// import 'package:rumakita_app2/data/models/berita_acara_models.dart';
// import 'package:rumakita_app2/presentation/widget/beritaacara_card.dart';
import 'package:rumakita_app2/presentation/widget/theme.dart';

class AjukanKeluhan extends StatefulWidget {
  const AjukanKeluhan({super.key});

  @override
  State<AjukanKeluhan> createState() => _AjukanKeluhanState();
}

class _AjukanKeluhanState extends State<AjukanKeluhan> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ajukan Keluhan',
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
                        child: Image.asset('assets/images/admlaporankeluhan.png'),
                      ),
                      Text(
                        "Hai Kenapa.. \napa dilingkukangan kamu \nadakeluhan",
                        style: mediumWhiteTextStyle.copyWith(fontSize: 13),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 18),
              //isi konten laporan keluhan        
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
          },
          backgroundColor: Colors.teal,
          child: const Icon(Icons.add),
          ),
      ),
    );
  }
}