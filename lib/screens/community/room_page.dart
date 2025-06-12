import 'package:flutter/material.dart';
import 'package:athelia/models/room.dart';
import 'package:athelia/widgets/community/message_tile.dart';

class RoomPage extends StatefulWidget {
  final String roomName;
  final String prompt;

  const RoomPage({super.key, required this.roomName, required this.prompt});

  @override
  State<RoomPage> createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> {
  final List<Message> messages = [
    Message(
      username: "LilySun",
      message: "Here’s a leaf I painted today.",
      likes: 8,
      avatarIcon: Icons.face,
    ),
  ];

  final TextEditingController _controller = TextEditingController();

  void _addMessage(String text) {
    if (text.trim().isEmpty) return;
    setState(() {
      messages.add(
        Message(
          username: "You",
          message: text,
          likes: 0,
          avatarIcon: Icons.person,
        ),
      );
      _controller.clear();
    });
  }

  void _toggleLike(int index) {
    setState(() {
      final msg = messages[index];
      if (msg.isLiked) {
        msg.likes--;
        msg.isLiked = false;
      } else {
        msg.likes++;
        msg.isLiked = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xFFFBE9DD),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.brown),
                    onPressed: () => Navigator.pop(context),
                  ),
                  Text(
                    widget.roomName,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.brown,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Text(
                widget.prompt,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.brown,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Divider(color: Color(0xFFE7C7A8), thickness: 1, height: 24),
              Expanded(
                child: ListView.builder(
                  itemCount: messages.length,
                  itemBuilder: (context, index) {
                    final msg = messages[index];
                    return MessageTile(
                      username: msg.username,
                      message: msg.message,
                      likes: msg.likes,
                      avatarIcon: msg.avatarIcon,
                      isLiked: msg.isLiked,
                      onLikeToggle: () => _toggleLike(index),
                    );
                  },
                ),
              ),
              const SizedBox(height: 13),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFFF3D5B5),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _controller,
                        decoration: const InputDecoration(
                          hintText: 'Write a message....',
                          hintStyle: TextStyle(color: Colors.brown),
                          border: InputBorder.none,
                        ),
                        onSubmitted: _addMessage,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => _addMessage(_controller.text),
                      child: const Icon(Icons.send, color: Colors.brown),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
