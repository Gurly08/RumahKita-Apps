import 'package:flutter/material.dart';
import 'package:todo_list/data/models/layanan_models.dart';
import 'package:todo_list/presentation/pages/editprofil.dart';
import 'package:todo_list/presentation/pages/home.dart';
import 'package:todo_list/presentation/pages/inbox.dart';
import 'package:todo_list/presentation/pages/splashtwo.dart';
import 'package:todo_list/presentation/widget/list_cardprofil.dart';
import 'package:todo_list/presentation/widget/theme.dart';

class Profil extends StatefulWidget {
  const Profil({super.key});

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  final int _selectedIndex = 2; // Set default to Profile

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
        backgroundColor: darkblue,
        body: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: [
                      const CircleAvatar(radius: 50, backgroundImage: AssetImage('assets/images/sopo.jpeg',)),
                      const SizedBox(height: 25),
                      Text('Dimas Rizqi Suryana', style: semiboldwhitetext.copyWith(fontSize: 18),), 
                      const SizedBox(height: 8),
                      Text('Masyarakat Kabupaten Tanggerang', style: mediumWhiteTextStyle.copyWith(fontSize: 12),),
                    ],
                  ),
                ),
              ),
              ListView(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: [
                  const SizedBox(height: 270),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius:
                          const BorderRadius.vertical(top: Radius.circular(65)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: Column(
                        children: [
                          const SizedBox(height: 46),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context, MaterialPageRoute(
                                  builder: (context) => const EditProfil(),
                                )
                              );
                            },
                            child: CardProfil(
                              layanan: Layanan(
                                  id: 4,
                                  imageUrl: 'assets/images/Person.png',
                                  name: 'Edit Profil',
                                  color: Colors.yellow[200]),
                            ),
                          ),
                          const SizedBox(height: 18),
                          CardProfil(
                            layanan: Layanan(
                                id: 5,
                                imageUrl: 'assets/images/suratkegiatan.png',
                                name: 'Pengajuan Kegiatan',
                                color: Colors.blue[300],
                                jumlah: 8,
                            ),
                          ),
                          const SizedBox(height: 18),
                          CardProfil(
                            layanan: Layanan(
                                id: 6,
                                imageUrl: 'assets/images/lglaporan.png',
                                name: 'Laporan Keluhan',
                                color: Colors.tealAccent,
                                jumlah: 21,
                            ),
                          ),
                          const SizedBox(height: 18),
                          CardProfil(
                            layanan: Layanan(
                                id: 7,
                                imageUrl: 'assets/images/latter.png',
                                name: 'Pengajuan Surat',
                                color: Colors.greenAccent,
                                jumlah: 12,
                            ),
                          ),
                          const SizedBox(height: 18),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context, MaterialPageRoute(
                                  builder: (context) => const Splashtwo(),
                                )
                              );
                            },
                            child: CardProfil(
                              layanan: Layanan(
                                  id: 4,
                                  imageUrl: 'assets/images/Logout.png',
                                  name: 'Keluar',
                                  color: Colors.red[100]),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
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
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.white,
          backgroundColor: darkblue,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
