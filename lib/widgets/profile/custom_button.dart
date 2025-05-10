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
    return GestureDetector(onTap: onClick, child: Icon(buttonIcon));
  }
}
