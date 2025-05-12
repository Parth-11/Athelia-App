import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    this.label = "",
    required this.controller,
    this.clabel,
    this.maxLines = 1,
  });

  final String label;
  final TextEditingController controller;
  final TextEditingController? clabel;
  final int maxLines;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {

    final String labelText = widget.label.isNotEmpty
        ? widget.label
        : (widget.clabel?.text ?? "");

    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$labelText *",
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 6),
          TextField(
            controller: widget.controller,
            maxLines: widget.maxLines,
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              isDense: true,
            ),
          ),
        ],
      ),
    );
  }
}
