import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StatusKegiatanPage(),
    );
  }
}

class StatusKegiatanPage extends StatelessWidget {
  final List<Map<String, dynamic>> kegiatan = [
    {'status': 'approved', 'title': 'Pernikahan Juli & Heri'},
    {'status': 'rejected', 'title': 'Sunatan geri hoverd'},
    {'status': 'approved', 'title': 'Pernikahan Juli & Heri'},
    {'status': 'rejected', 'title': 'Sunatan geri hoverd'},
    {'status': 'approved', 'title': 'Pernikahan Juli & Heri'},
    {'status': 'rejected', 'title': 'Sunatan geri hoverd'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Status Kegiatan'),
        actions: [
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {
              // Untuk Menghapus Kegiatan 
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: kegiatan.length,
        itemBuilder: (context, index) {
          final item = kegiatan[index];
          return Container(
            margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
            decoration: BoxDecoration(
              color: item['status'] == 'approved' ? Colors.green[100] : Colors.red[100],
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(
                color: item['status'] == 'approved' ? Colors.green : Colors.red,
                width: 2.0,
              ),
            ),
            child: ListTile(
              title: Text(
                'Pengajuan kegiatan',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(item['title']),
              trailing: Icon(
                item['status'] == 'approved' ? Icons.check_circle : Icons.cancel,
                color: item['status'] == 'approved' ? Colors.green : Colors.red,
              ),
            ),
          );
        },
      ),
    );
  }
}
