import 'package:athelia/widgets/profile/settings_footer.dart';
import 'package:athelia/widgets/profile/settings_header.dart';
import 'package:athelia/widgets/profile/settings_tile.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});
  static const String id = '/settings';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SettingsHeader(),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Column(children: [CustomSection()]),
                ],
              ),
            ),
            SettingsFooter(),
          ],
        ),
      ),
    );
  }
}

class CustomSection extends StatelessWidget {
  const CustomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Title'),
        SettingsTile(
          route: '',
          leadingIcon: Icons.arrow_circle_right_outlined,
          tileTitle: 'Lorem Ipsum',
        ),
      ],
    );
  }
}
