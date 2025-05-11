import 'package:flutter/material.dart';

class SettingsTile extends StatelessWidget {
  const SettingsTile({
    super.key,
    required this.route,
    required this.leadingIcon,
    required this.tileTitle,
  });

  final String route;
  final IconData leadingIcon;
  final String tileTitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(leadingIcon),
      trailing: const Icon(Icons.arrow_forward_ios_outlined),
      title: Text(tileTitle),
      onTap: () {
        Navigator.pushNamed(context, route);
      },
    );
  }
}
