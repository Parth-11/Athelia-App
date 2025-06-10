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
    return SingleChildScrollView(
      child: Column(
        children: [
          Divider(color: Colors.brown[500], thickness: 3),
          const Text(
            "Cozy Lounge: Hobby Rooms",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF7A4B2A),
            ),
          ),
          const SizedBox(height: 12),

          Container(
            constraints: BoxConstraints(maxHeight: 300),
            child: Scrollbar(
              child: SingleChildScrollView(
                child: Column(
                  children:
                      rooms
                          .map(
                            (room) => RoomTile(
                              room: room,
                              onTap: () {
                                // room enter
                              },
                            ),
                          )
                          .toList(),
                ),
              ),
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

        // backgroundColor: const Color(0xFFFBE9DD),
      ),
    );
  }
}
