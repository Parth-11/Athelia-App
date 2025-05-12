import 'package:athelia/widgets/home/header.dart';
import 'package:athelia/widgets/home/hobby_card.dart';
import 'package:athelia/widgets/home/memory_lane.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        HomePageHeader(
          headerColor: const Color(0xFFFFE6D0),
          logo: Icons.abc,
          tagLine: 'Some TagLine',
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(color: Colors.amber),
            child: Column(
              children: [
                // Welcome Back
                Container(decoration: BoxDecoration(), child: Column()),
                // My Hobby Section
                Text('My Hobby Shelf'),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      HobbyCard(
                        title: 'Some Text',
                        description: 'Sub Text',
                        cardColor: const Color(0xFFE4E5BE),
                      ),
                    ],
                  ),
                ),
                Text('Memory Lane'),
                Row(
                  children: [
                    MemoryNote(
                      noteText:
                          'Loremm Ipsum \nahowfncwnovneonoijoiwfonfksnkfdfj \nsojfknfaoknfoiwneonwpn \npingdfkjaonfaosnwoi',
                    ),
                    MemorySticker(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
