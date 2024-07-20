import 'package:flutter/material.dart';

class PengantarKeluruhan extends StatelessWidget {
  const PengantarKeluruhan({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.tealAccent,
        borderRadius: BorderRadius.circular(25),
      ),
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 22),
            child: Text(
              'Daftar Surat Pengantar Kelurahan',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: DataTable(
              border: TableBorder.all(
                color: Colors.black,
                width: 1.0,
                style: BorderStyle.solid,
              ),
              columns: const [
                DataColumn(label: Text('Kebutuhan Surat')),
                DataColumn(label: Text('Status')),
              ],
              rows: [
                DataRow(
                  color: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                    return const Color(0xffBAFFAE);
                  }),
                  cells: const [
                    DataCell(Text('Pembuatan KTP')),
                    DataCell(Text('Belum Selesai')),
                  ],
                ),
                DataRow(
                  color: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                    return const Color(0xffBAFFAE);
                  }),
                  cells: const [
                    DataCell(Text('Pembuatan SKCK')),
                    DataCell(Text('Selesai')),
                  ],
                ),
                DataRow(
                  color: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                    return const Color(0xffBAFFAE);
                  }),
                  cells: const [
                    DataCell(Text('Pernikahan')),
                    DataCell(Text('Belum Selesai')),
                  ],
                ),
                // Tambahkan DataRow lainnya sesuai kebutuhan
              ],
            ),
          )
        ],
      ),
    );
  }
}
