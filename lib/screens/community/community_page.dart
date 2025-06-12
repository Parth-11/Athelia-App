import 'package:flutter/material.dart';
import 'package:athelia/widgets/community/featured_message_card.dart';
import 'package:athelia/widgets/community/room_tile.dart';
import 'package:athelia/screens/community/room_page.dart';

class CommunityPage extends StatefulWidget {
  const CommunityPage({super.key});

  @override
  State<CommunityPage> createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  int sindex = 4;

  final List<Map<String, dynamic>> rooms = [
    {
      'id': 'painting-nook',
      'name': '#painting-nook',
      'prompt': 'Show us your brush strokes! What have you been working on?',
      'title': '#painting-nook',
      'subtitle': 'Room for painters & sketchers',
      'icon': '🎨',
      'postCount': 12,
    },
    {
      'id': 'book-club',
      'name': '#book-club',
      'prompt': 'What are you reading today? 📚',
      'title': '#book-club',
      'subtitle': 'Share what you’re reading!',
      'icon': '📖',
      'postCount': 8,
    },
    {
      'id': 'plant-lovers',
      'name': '#plant-lovers',
      'prompt': 'How are your plant babies doing today?',
      'title': '#plant-lovers',
      'subtitle': 'All about plants 🌿',
      'icon': '🪴',
      'postCount': 7,
    },
    {
      'id': 'cozy-crafts',
      'name': '#cozy-crafts',
      'prompt': 'What cozy craft are you making today?',
      'title': '#cozy-crafts',
      'subtitle': 'Knitting, embroidery & more',
      'icon': '🧶',
      'postCount': 10,
    },
  ];

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
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder:
                                        (_) => RoomPage(
                                          roomName: room['name'],
                                          prompt: room['prompt'],
                                        ),
                                  ),
                                );
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

// 
// 12.5 + 8 + 2.5 + 9.5 
// 20.5
// 12
// 32.5