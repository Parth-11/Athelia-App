import 'package:athelia/widgets/home/entry_button.dart';
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
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 3, color: Color(0xFF40003C)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 8,
                        top: 8,
                        bottom: 8,
                        right: 8,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome UserName,',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Today's Vibe:",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "Chill and Fun",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Active Hobbies",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "Singing,Binge Watching",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Center(child: EntryButton()),
                        ],
                      ),
                    ),
                  ),
                ),
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
