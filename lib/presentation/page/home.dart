import 'package:flutter/material.dart';
import 'package:rumakita_app2/presentation/page/ajukan_kegiatan.dart';
import 'package:rumakita_app2/presentation/page/inbox.dart';
import 'package:rumakita_app2/presentation/page/laporan_keluhan.dart';
import 'package:rumakita_app2/presentation/page/notifikasi.dart';
import 'package:rumakita_app2/presentation/page/profil.dart';
import 'package:rumakita_app2/presentation/page/suruatpengantar_kelurahan.dart';
// import 'package:rumakita_app2/presentation/widget/list_cardprofil.dart';
import 'package:rumakita_app2/presentation/widget/banner_berittaacara.dart';
import 'package:rumakita_app2/presentation/widget/detail_card_layanan.dart';
import 'package:rumakita_app2/presentation/widget/list_pelayanansurat.dart';
import 'package:rumakita_app2/presentation/widget/theme.dart';
import 'package:rumakita_app2/data/models/layanan_models.dart';
import 'package:rumakita_app2/data/models/pelayanansurat_models.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  // Definisikan daftar layananSurat di sini
  final List<Surat> layananSurat = [
    Surat(name: 'Surat Keterangan Tidak Mampu'),
    Surat(name: 'Surat Pindah Domisili'),
    Surat(name: 'Surat Keterangan Kematian'),
    Surat(name: 'Surat Pengajuan Pembuatan'),
  ];

  final int _selectedIndex = 1; // Set default to Home

  void _onItemTapped(int index) {
    if (index == 0) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const Inbox()));
    } else if (index == 1) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const Home()));
    } else if (index == 2) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const Profil()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              // const CircleAvatar(
              //   foregroundImage: AssetImage('assets/images/sopo.jpeg'),
              // ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dimas Rizki Suryana',
                    style: mediumWhiteTextStyle.copyWith(fontSize: 15),
                  ),
                  Text(
                    'Ajukan keluhan anda bersama kami',
                    style: regularwhitetext.copyWith(fontSize: 8),
                  ),
                ],
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 205, 249, 255),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Notifikasi(),));
                  },
                  icon: const Icon(
                    Icons.notifications_none,
                    color: Colors.indigo,
                  ),
                ),
              ),
            )
          ],
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: darkblue,
        body: SingleChildScrollView(
          child: SafeArea(
            bottom: false,
            child: Stack(
              children: [
                //layer 1 bg container putih
                ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    const SizedBox(height: 185),
                    Container( // container1 (layer1 as bg)
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: const BorderRadius.vertical(top: Radius.circular(45)),
                      ),
                    ),
                  ],
                ),
                //layer 1 bg container putih

                Padding(
                  padding: const EdgeInsets.all(18),
                  //align dibawah berfungsi untuk letakan konten layer 2 diatas layer 1
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 40), // Atur jarak dari atas
                      child: Column(
                        //layer 2
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container( // container: layanan utama
                            width: 350,
                            height: 180,
                            decoration: BoxDecoration(
                              color: Colors.teal,
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 18),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 5),
                                  Text(
                                    'Layanan Utama\nPilih layanan yang kamu inginkan!',
                                    style: mediumWhiteTextStyle.copyWith(fontSize: 12),
                                  ),
                                  const SizedBox(height: 13),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => const AjukanKegiatan(),));
                                        },
                                        child: CardLayanan(
                                          layanan: Layanan(
                                            id: 1,
                                            imageUrl: 'assets/images/suratkegiatan.png',
                                            name: 'Ajukan\nKegiatan',
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 18),
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => const AjukanKeluhan(),));
                                        },
                                        child: CardLayanan(
                                          layanan: Layanan(
                                            id: 2,
                                            imageUrl: 'assets/images/lglaporan.png',
                                            name: 'Laporan\nKeluhan',
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 18),
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => const PengantarKelurahan(), ));
                                        },
                                        child: CardLayanan(
                                          layanan: Layanan(
                                            id: 3,
                                            imageUrl: 'assets/images/suratpengantar.png',
                                            name: 'Surat Pengantar\nKelurahan',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 25),
                          Text('Pelayanan Surat', style: semiboldBlackTextStyle.copyWith(fontSize: 12, color: darkblue)),
                          const Divider(),
                          const SizedBox(height: 8),
                          //untuk atur dekorasi pelayanansurat, silahkan ke file list_pelayanansurat
                          ListPelayananSurat(layananSurat: layananSurat), // Pelayanan surat
                          const SizedBox(height: 25),
                          Text('Berita Acara', style: semiboldBlackTextStyle.copyWith(fontSize: 12, color: darkblue)),
                          const Divider(),
                          const SizedBox(height: 8),
                          const BannerBeritaacara(),//konten berita acara
                          //end layer 2
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.all_inbox),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        backgroundColor: darkblue,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
      ),
    );
  }
}
