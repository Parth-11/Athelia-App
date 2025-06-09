import 'package:athelia/widgets/home/entry_button.dart';
// import 'package:athelia/widgets/home/header.dart';
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
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              // color: Color(0xFFFFE6D0),
              color: Color(0xFFFFF3E5),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            child: Column(
              children: [
                // Welcome Back
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 4, color: Color(0xFF40003C)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 2.0,
                        vertical: 4.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome UserName,',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Itim',
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
                                  fontFamily: "Itim",
                                ),
                              ),
                              Text(
                                "Chill and Fun",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Itim',
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
                                  fontFamily: 'Itim',
                                ),
                              ),
                              Text(
                                "Singing,Binge Watching",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Itim',
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
                Text(
                  'My Hobby Shelf',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
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
                Text(
                  'Memory Lane',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                Row(
                  children: [
                    MemoryNote(
                      noteText:
                          'Loremm Ipsum \nahowfncwnovneonoijoiwfonfksnkfdfj \nsojfknfaoknfoiwneonwpn \npingdfkjaonfaosnwoi',
                    ),
                    MemorySticker(),
                  ],
                ),
                Text(
                  'My Hobby Shelf',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
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
              ],
            ),
          ),
        ),
      ],
    );
  }
}
