import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:rumakita_app2/data/models/pelayanansurat_models.dart';
import 'package:rumakita_app2/presentation/widget/theme.dart';
import 'package:rumakita_app2/presentation/widget/inputuser.dart';
// import 'package:rumakita_app2/data/models/berita_acara_models.dart';
=======
import 'package:todo_list/data/models/pelayanansurat_models.dart';
import 'package:todo_list/presentation/widget/inputuser.dart';
import 'package:todo_list/presentation/widget/theme.dart'; // Tambahkan impor ini
>>>>>>> 7cb3adbe34f0c90e7e8ba986e6d46a8f87dd4066

class ListPelayananSurat extends StatelessWidget {
  const ListPelayananSurat({required this.layananSurat, super.key});
  final List<Surat> layananSurat;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: layananSurat.length,
      separatorBuilder: (context, index) => const SizedBox(height: 12),
      itemBuilder: (context, index) => InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => InputLayanansurat(
                selectedSurat: layananSurat[index], // Kirim data yang dipilih
              ),
            ),
          );
        },
        child: Card(
          color: Colors.teal,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Row(
              children: [
                Image.asset('assets/images/latter.png'),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Pelayanan Surat', style: regularwhitetext.copyWith(fontSize: 12)),
                    Text(
                      layananSurat[index].name, 
                      style: mediumWhiteTextStyle.copyWith(fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
