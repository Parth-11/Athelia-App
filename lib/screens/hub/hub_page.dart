import 'package:flutter/material.dart';
import 'hobby_page.dart';

class HubPage extends StatefulWidget {
  const HubPage({super.key});

  @override
  State<HubPage> createState() => _HubPageState();
}

class _HubPageState extends State<HubPage> {
  final List<String> hobbies = [
    'Books',
    'Movies',
    'Games',
    'Series',
    'Documentaries',
  ];

  final Map<String, Map<String, List<Map<String, String>>>> predefinedHobbyData = {
    'Books': {
      'To Read': [
        {'title': 'Atomic Habits', 'subtitle': 'James Clear'},
        {'title': 'The Alchemist', 'subtitle': 'Paulo Coelho'},
      ],
      'Read': [
        {'title': '1984', 'subtitle': 'George Orwell'},
        {'title': 'Brave New World', 'subtitle': 'Aldous Huxley'},
      ],
      'Ongoing': [
        {'title': 'Dune', 'subtitle': 'Frank Herbert'},
      ],
    },
    'Movies': {
      'To Watch': [
        {'title': 'Inception', 'subtitle': 'Christopher Nolan'},
        {'title': 'The Dark Knight', 'subtitle': 'Christopher Nolan'},
      ],
      'Watched': [
        {'title': 'Titanic', 'subtitle': 'James Cameron'},
        {'title': 'The Godfather', 'subtitle': 'Francis Ford Coppola'},
      ],
      'Ongoing': [
        {'title': 'Avengers: Endgame', 'subtitle': 'Anthony and Joe Russo'},
      ],
    },
    'Games': {
      'To Play': [
        {'title': 'The Witcher 3', 'subtitle': 'CD Projekt Red'},
        {'title': 'Cyberpunk 2077', 'subtitle': 'CD Projekt Red'},
      ],
      'Played': [
        {'title': 'Halo', 'subtitle': 'Bungie'},
        {'title': 'Overwatch', 'subtitle': 'Blizzard Entertainment'},
      ],
    },
    'Series': {
      'To Watch': [
        {'title': 'Stranger Things', 'subtitle': 'Netflix'},
        {'title': 'Breaking Bad', 'subtitle': 'AMC'},
      ],
      'Watched': [
        {'title': 'The Office', 'subtitle': 'NBC'},
        {'title': 'Friends', 'subtitle': 'NBC'},
      ],
      'Ongoing': [
        {'title': 'The Mandalorian', 'subtitle': 'Disney+'},
      ],
    },
    'Documentaries': {
      'To Watch': [
        {'title': 'The Last Dance', 'subtitle': 'Netflix'},
        {'title': '13th', 'subtitle': 'Ava DuVernay'},
      ],
      'Watched': [
        {'title': 'Making a Murderer', 'subtitle': 'Netflix'},
        {'title': 'Our Planet', 'subtitle': 'Netflix'},
      ],
      'Ongoing': [
        {'title': 'Tiger King 2', 'subtitle': 'Netflix'},
      ],
    },
  };

  final Map<String, Map<String, List<Map<String, String>>>> customHobbyData = {};

  void _addNewHobby() {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController sectionsController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Add New Hobby'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(labelText: 'Hobby Name'),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: sectionsController,
                decoration: const InputDecoration(
                  labelText: 'Sections (comma-separated)',
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                final name = nameController.text.trim();
                final sections = sectionsController.text
                    .split(',')
                    .map((s) => s.trim())
                    .where((s) => s.isNotEmpty)
                    .toList();

                if (name.isNotEmpty && sections.isNotEmpty) {
                  setState(() {
                    hobbies.add(name);
                    customHobbyData[name] = {
                      for (var s in sections) s: [],
                    };
                  });
                }
                Navigator.of(context).pop();
              },
              child: const Text('Add'),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Hobbies Hub")),
      body: ListView.builder(
        itemCount: hobbies.length,
        itemBuilder: (context, index) {
          final hobby = hobbies[index];
          return Card(
            child: ListTile(
              title: Text(hobby),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                final itemLists =
                    predefinedHobbyData[hobby] ?? customHobbyData[hobby];

                if (itemLists != null) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          HobbyPage(hobbyName: hobby, itemLists: itemLists),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Page for "$hobby" not implemented')),
                  );
                }
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addNewHobby,
        child: const Icon(Icons.add),
      ),
    );
  }
}