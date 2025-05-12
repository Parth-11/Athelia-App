import 'package:flutter/material.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key, required this.onTap});

  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        onPressed: onTap, // Handle change password
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: Colors.teal),
          padding: const EdgeInsets.symmetric(vertical: 16),
        ),
        child: const Text("Change Password"),
      ),
    );
  }
}
