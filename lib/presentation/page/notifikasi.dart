import 'package:flutter/material.dart';
import 'package:rumakita_app2/data/models/notifikasi_item_models.dart';
import 'package:rumakita_app2/presentation/widget/notifikasi/inbox.dart';
import 'package:rumakita_app2/presentation/widget/theme.dart';
import '../widget/notifikasi/statuscard.dart';

class Notifikasi extends StatefulWidget {
  const Notifikasi({super.key});

  @override
  State<Notifikasi> createState() => _NotifikasiState();
}

class _NotifikasiState extends State<Notifikasi> {
  final List<NotificationItem> _notifications = [
    const NotificationItem(text: 'Kelulusan tahun 2024', icon: Icons.check_circle, status: 'Approved'),
    const NotificationItem(text: 'Sistem Informasi', icon: Icons.cancel, status: 'Rejected'),
    const NotificationItem(text: 'Teknik Informatika', icon: Icons.check_circle, status: 'Approved'),
    const NotificationItem(text: 'Tidak jadi sunatan', icon: Icons.cancel, status: 'Rejected'),
    // Tambahkan notifikasi lainnya disini
  ];

  void _removeNotification(int index) {
    final removedNotification = _notifications[index];
    setState(() {
      _notifications.removeAt(index);
    });

    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 3),
        content: const Text('Notification deleted!'),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: () {
            setState(() {
              _notifications.insert(index, removedNotification);
            });
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkblue,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Notifikasi',
          style: mediumWhiteTextStyle.copyWith(fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Status Kegiatan',
                style: semiboldwhitetext.copyWith(fontSize: 18),
              ),
              const SizedBox(height: 12),
              // Tambahkan list status card disini
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: _notifications.length,
                itemBuilder: (context, index) {
                  final notification = _notifications[index];
                  final color = notification.status == 'Approved'
                      ? Colors.green
                      : Colors.red;

                  return Dismissible(
                    key: Key(notification.text),
                    direction: DismissDirection.horizontal,
                    onDismissed: (direction) {
                      _removeNotification(index);
                    },
                    background: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        color: Colors.red[200],
                        alignment: Alignment.centerRight,
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: const Icon(Icons.delete, color: Colors.white),
                      ),
                    ),
                    child: StatusCard(
                      status: notification.status,
                      description: notification.text,
                      color: color,
                      icon: notification.icon,
                    ),
                  );
                },
              ),
              const SizedBox(height: 18),
              const InboxSection(),
            ],
          ),
        ),
      ),
    );
  }
}
