import 'package:flutter/material.dart';

class OptionList extends StatefulWidget {
  const OptionList({super.key, required this.options, required this.onChanged});

  final List<String> options;
  final void Function(int) onChanged;

  @override
  State<OptionList> createState() => _OptionListState();
}

class _OptionListState extends State<OptionList> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          widget.options.length,
          (index) => GestureDetector(
            onTap: () {
              if (selected != index) {
                setState(() {
                  selected = index;
                });
                widget.onChanged(index);
              }
            },
            child: Container(
              // width: widget.options[index].length * 12,
              margin: const EdgeInsets.symmetric(horizontal: 8),
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 4.0,
              ),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border:
                    selected == index
                        ? Border(
                          bottom: BorderSide(
                            color: Colors.grey.shade700,
                            width: 2.5,
                          ),
                        )
                        : null,
              ),
              child: AnimatedDefaultTextStyle(
                style: TextStyle(
                  fontWeight:
                      index == selected ? FontWeight.w600 : FontWeight.normal,
                  color: Colors.black,
                  fontSize: index == selected ? 18 : 16,
                ),
                duration: Duration(milliseconds: 150),
                child: Text(widget.options[index]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
