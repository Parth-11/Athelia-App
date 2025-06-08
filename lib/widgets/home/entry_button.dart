import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EntryButton extends StatelessWidget {
  const EntryButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFFFED8AC),
        shadowColor: Color(0xFFCC9C69),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 8.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(CupertinoIcons.pen, color: Colors.black, size: 20),
            Text("Today's entry"),
            VerticalDivider(thickness: 20, color: Colors.black),
            Icon((Icons.arrow_forward_ios_outlined)),
          ],
        ),
      ),
    );
  }
}
