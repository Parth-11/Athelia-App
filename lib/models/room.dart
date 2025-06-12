import 'package:flutter/material.dart';

class Message {
  final String username;
  final String message;
  int likes;
  final IconData avatarIcon;
  bool isLiked;

  Message({
    required this.username,
    required this.message,
    required this.likes,
    required this.avatarIcon,
    this.isLiked = false,
  });
}

