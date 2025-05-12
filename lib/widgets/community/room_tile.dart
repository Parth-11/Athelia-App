import 'package:flutter/material.dart';

class RoomTile extends StatelessWidget {
  final Map<String, dynamic> room;
  final VoidCallback? onTap;

  const RoomTile({super.key, required this.room, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      color: Colors.white,
      child: ListTile(
        leading: Text(
          room['icon'],
          style: const TextStyle(fontSize: 24),
        ),
        title: Text(
          room['title'],
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(room['subtitle']),
        trailing: room['postCount'] != null ? Text('${room['postCount']}') : null,
        onTap: onTap,
      ),
    );
  }
}
