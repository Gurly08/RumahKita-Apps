import 'package:flutter/material.dart';

class JadwalKegiatan extends StatelessWidget {
  const JadwalKegiatan({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.amber.shade300,
        borderRadius: BorderRadius.circular(25),
      ),
      padding: const EdgeInsets.all(25), // Padding luar
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 22),
            child: Text(
              'Jadwal Kegiatan Bulan Juni',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 10), // Tambahkan jarak antara teks dan tabel
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: DataTable(
              border: TableBorder.all(
                color: Colors.black, // Border untuk setiap cell
                width: 1.0,
                style: BorderStyle.solid,
              ),
              columns: const [
                DataColumn(label: Text('Kegiatan Berlangsung')),
                DataColumn(label: Text('Status')),
              ],
              rows: [
                DataRow(
                  color: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                    return const Color(0xffBAFFAE);
                  }),
                  cells: const [
                    DataCell(Text('11-13 Juni/10.30-19.30')),
                    DataCell(Text('Full')),
                  ],
                ),
                DataRow(
                  color: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                    return const Color(0xffBAFFAE);
                  }),
                  cells: const [
                    DataCell(Text('11-13 Juni/10.30-19.30')),
                    DataCell(Text('Full')),
                  ],
                ),
                DataRow(
                  color: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                    return const Color(0xffBAFFAE);
                  }),
                  cells: const [
                    DataCell(Text('11-13 Juni/10.30-19.30')),
                    DataCell(Text('Full')),
                  ],
                ),
                // Tambahkan DataRow lainnya sesuai kebutuhan
              ],
            ),
          ),
        ],
     ),
  );
  }
}
