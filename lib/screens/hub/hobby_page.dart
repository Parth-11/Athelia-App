import 'package:flutter/material.dart';

class HobbyPage extends StatefulWidget {
final String hobbyName;
final Map<String, List<Map<String, String>>> itemLists;

const HobbyPage({super.key, required this.hobbyName, required this.itemLists});

@override
State<HobbyPage> createState() => _HobbyPageState();
}

class _HobbyPageState extends State<HobbyPage> {
String selectedCategory = '';

@override
Widget build(BuildContext context) {
final currentList = widget.itemLists[selectedCategory] ?? [];

return Scaffold(
  appBar: AppBar(title: Text(widget.hobbyName)),
  body: Padding(
    padding: const EdgeInsets.all(16),
    child: Column(
      children: [
        // Category buttons
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: widget.itemLists.keys.map((category) {
            final isSelected = selectedCategory == category;
            return ElevatedButton(
              onPressed: () {
                setState(() {
                  selectedCategory = category;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: isSelected ? Colors.deepPurple : Colors.white,
                foregroundColor: isSelected ? Colors.white : Colors.deepPurple,
                side: const BorderSide(color: Colors.deepPurple),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              ),
              child: Text(category),
            );
          }).toList(),
        ),
        const SizedBox(height: 24),
        // Items list
        Expanded(
          child: selectedCategory.isEmpty
              ? const Center(child: Text("Select a category to view items"))
              : ListView.builder(
                  itemCount: currentList.length,
                  itemBuilder: (context, index) {
                    final item = currentList[index];
                    return Card(
                      child: ListTile(
                        title: Text(item['title']!),
                        subtitle: Text(item['subtitle'] ?? ""),
                      ),
                    );
                  },
                ),
        ),
      ],
    ),
  ),
  floatingActionButton: FloatingActionButton(
    onPressed: () {
      // Add item logic
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Feature to add a new item to ${widget.hobbyName} coming soon!")),
      );
    },
    child: const Icon(Icons.add),
  ),
);


}
}
