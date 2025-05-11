import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.buttonIcon,
    required this.onClick,
  });

  final IconData buttonIcon;
  final void Function() onClick;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey.shade300,
      borderRadius: BorderRadius.circular(40),
      child: InkWell(
        onTap: onClick,
        borderRadius: BorderRadius.circular(64.0),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Icon(buttonIcon),
        ),
      ),
    );
  }
}
