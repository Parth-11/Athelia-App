import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EntryButton extends StatelessWidget {
  const EntryButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xFFFED8AC),
      borderRadius: BorderRadius.all(Radius.circular(8)),
      shadowColor: Color(0xFFCC9C69),
      surfaceTintColor: Color(0xFFCC9C69),
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 8.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(CupertinoIcons.pencil, color: Colors.black, size: 20),
              Text("Today's entry", style: TextStyle(fontFamily: 'Itim')),
              SizedBox(
                height: 20,
                child: VerticalDivider(
                  thickness: 1.5,
                  color: Color(0xFFCC9C69),
                ),
              ),
              Icon((Icons.arrow_forward_ios_outlined), size: 16),
            ],
          ),
        ),
      ),
    );
  }
}
