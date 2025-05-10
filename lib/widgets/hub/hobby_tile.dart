// widgets/hub/hobby_tile.dart
import 'package:flutter/material.dart';

class HobbyTile extends StatelessWidget {
  final String hobby;
  final VoidCallback onTap;

  const HobbyTile({required this.hobby, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(hobby),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: onTap,
      ),
    );
  }
}
