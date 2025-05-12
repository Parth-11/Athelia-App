import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    this.clabel,
    this.label = "",
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
    final bool isEditable = widget.clabel != null;

    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          isEditable
              ? TextField(
                  controller: widget.clabel,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                  decoration: const InputDecoration(
                    isDense: true,
                    border: InputBorder.none, 
                    contentPadding: EdgeInsets.zero,
                  ),
                )
              : Text(
                  "${widget.label} *",
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
          const SizedBox(height: 6),
          TextField(
            controller: widget.controller,
            maxLines: widget.maxLines,
            minLines: 1,
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
