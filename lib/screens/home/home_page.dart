import 'package:athelia/widgets/home/header.dart';
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
        HomePageHeader(),
        Divider(color: Colors.grey.shade500),
        Expanded(
          child: Container(
            decoration: BoxDecoration(color: Colors.amber),
            child: Center(
              child: Text(index == 0 ? "For You Section" : "Following Section"),
            ),
          ),
        ),
      ],
    );
  }
}
