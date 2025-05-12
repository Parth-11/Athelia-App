import 'package:flutter/material.dart';
import 'package:athelia/widgets/community/featured_message_card.dart';
import 'package:athelia/widgets/community/room_tile.dart';

class CommunityPage extends StatefulWidget {
  const CommunityPage({super.key});

  @override
  State<CommunityPage> createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  int sindex = 4;

  final List<Map<String, dynamic>> rooms = [
    {
      'id': 'room-name',
      'title': '#room-title',
      'subtitle': 'Room Subtitle -- Some Catchy Phrase!',
      'icon': '📖',
      'postCount': 5,
    },
    {
      'id': 'room-name',
      'title': '#room-title',
      'subtitle': 'Room Subtitle -- Some Catchy Phrase!',
      'icon': '📖',
      'postCount': 5,
    },
    {
      'id': 'room-name',
      'title': '#room-title',
      'subtitle': 'Room Subtitle -- Some Catchy Phrase!',
      'icon': '📖',
      'postCount': 5,
    },
    {
      'id': 'room-name',
      'title': '#room-title',
      'subtitle': 'Room Subtitle -- Some Catchy Phrase!',
      'icon': '📖',
      'postCount': 5,
    },
  ];

  void onItemTap(int index) {
    setState(() {
      sindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 14),
          color: const Color(0xFFFFE7D1),
          height: 70,
          width: double.infinity,
          child: const Text(
            "My Cozy Corner",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Color(0xFF7A4B2A),
            ),
          ),
        ),

        Divider(color: Colors.brown[500], thickness: 3),

        SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                "Cozy Lounge: Hobby Rooms",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF7A4B2A),
                ),
              ),
              const SizedBox(height: 12),
              ...rooms.map(
                (room) => RoomTile(
                  room: room,
                  onTap: () {
                    // room enter
                  },
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                "Featured message",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const FeaturedMessageCard(),
              const SizedBox(height: 24),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFF1CD),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Today’s Cozy Prompt",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "If your favorite hobby were a weather, what would it be?",
                    ),
                    const SizedBox(height: 12),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFDAB58F),
                        foregroundColor: Colors.white,
                      ),
                      onPressed: () {},
                      child: const Text("🌥 Respond"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],

      // backgroundColor: const Color(0xFFFBE9DD),
    );
  }
}
