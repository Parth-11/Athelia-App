import 'package:flutter/material.dart';

class HomePageHeader extends StatefulWidget {
  const HomePageHeader({super.key, required this.onChanged});

  final void Function(int) onChanged;

  @override
  State<HomePageHeader> createState() => _HomePageHeaderState();
}

class _HomePageHeaderState extends State<HomePageHeader> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.abc_outlined),
        SizedBox(width: 8),
        DropdownButton(
          value: index,
          borderRadius: BorderRadius.circular(10),
          padding: EdgeInsets.symmetric(horizontal: 6),
          underline: const SizedBox(),
          items: [
            DropdownMenuItem(value: 0, child: Text("For You")),
            DropdownMenuItem(value: 1, child: Text("Following")),
          ],
          onChanged: (int? value) {
            setState(() {
              index = value!;
              widget.onChanged(index);
            });
          },
        ),
        Spacer(),
        Icon(Icons.abc),
        SizedBox(width: 8),
        Icon(Icons.access_alarm),
        SizedBox(width: 8),
        Icon(Icons.zoom_out),
      ],
    );
  }
}
