import 'package:flutter/material.dart';
import 'package:rumakita_app2/presentation/widget/notifikasi/inbox_card.dart';
import 'package:rumakita_app2/presentation/widget/theme.dart';

class InboxSection extends StatefulWidget {
  const InboxSection({super.key});

  @override
  State<InboxSection> createState() => _InboxSectionState();
}

class _InboxSectionState extends State<InboxSection> {
  List<Map<String, String>> inboxData = [
    {
      'text': 'Pengajuan Surat Pindah Domisili',
      'attachment': 'Lampiran surat SPD',
    },
    {
      'text': 'Pengajuan Surat Pindah Domisili',
      'attachment': 'Lampiran surat SPD',
    },
    {
      'text': 'Pengajuan Surat Pindah Domisili',
      'attachment': 'Lampiran surat SPD',
    },
    // Tambahkan data lainnya disini
  ];

  void _removeInboxItem(int index) {
    final removedItem = inboxData[index];
    setState(() {
      inboxData.removeAt(index);
    });

    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 3),
        content: const Text('Inbox item deleted!'),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: () {
            setState(() {
              inboxData.insert(index, removedItem);
            });
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Kotak Masuk Surat',
          style: semiboldwhitetext.copyWith(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: inboxData.length,
          itemBuilder: (context, index) {
            final inboxItem = inboxData[index];
            return Dismissible(
              key: UniqueKey(),
              direction: DismissDirection.horizontal,
              onDismissed: (direction) {
                setState(() {
                  inboxData.removeAt(index);
                });

                ScaffoldMessenger.of(context).clearSnackBars();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    duration: const Duration(seconds: 3),
                    content: const Text('Inbox item deleted!'),
                    action: SnackBarAction(
                      label: 'Undo',
                      onPressed: () {
                        setState(() {
                          inboxData.insert(index, inboxItem);
                        });
                      },
                    ),
                  ),
                );
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
              child: InboxCard(
                text: inboxItem['text']!,
                attachment: inboxItem['attachment']!,
              ),
            );
          },
        ),
      ],
    );
  }
}
