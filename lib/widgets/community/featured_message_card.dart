import 'package:flutter/material.dart';

class FeaturedMessageCard extends StatelessWidget {
  const FeaturedMessageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              child: Text("U"),
              backgroundColor: Color(0xFFF9D9A6),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "UserName",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text("Some Text -- cutieeeee "),
                  SizedBox(height: 6),
                ],
              ),
            ),
            const Column(
              children: [
                Icon(Icons.favorite, color: Colors.pink, size: 20),
                Text("0"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
