import 'package:flutter/material.dart';

class InboxCard extends StatelessWidget {
  const InboxCard({
    super.key,
    required this.text, 
    required this.attachment
  });

  final String text;
  final String attachment;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(text, style: const TextStyle(fontSize: 16)),
          const SizedBox(height: 8),
          Row(
            children: [
              const Icon(Icons.picture_as_pdf, color: Colors.grey),
              const SizedBox(width: 10),
              Text(attachment, style: const TextStyle(color: Colors.grey)),
            ],
          ),
        ],
      ),
    );
  }
}