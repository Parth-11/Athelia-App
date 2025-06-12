import 'package:flutter/material.dart';

class MessageTile extends StatelessWidget {
  final String username;
  final String message;
  final int likes;
  final IconData avatarIcon;
  final bool isLiked;
  final VoidCallback onLikeToggle;

  const MessageTile({
    super.key,
    required this.username,
    required this.message,
    required this.likes,
    required this.avatarIcon,
    required this.isLiked,
    required this.onLikeToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(avatarIcon, size: 28, color: Colors.brown),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  username,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.brown,
                  ),
                ),
                Text(message, style: const TextStyle(color: Colors.brown)),
              ],
            ),
          ),
          GestureDetector(
            onTap: onLikeToggle,
            child: Row(
              children: [
                Icon(
                  isLiked ? Icons.favorite : Icons.favorite_border,
                  size: 16,
                  color: Colors.brown,
                ),
                const SizedBox(width: 4),
                Text('$likes', style: const TextStyle(color: Colors.brown)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
