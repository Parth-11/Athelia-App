import 'package:athelia/screens/profile/edit_profile.dart';
import 'package:athelia/screens/profile/clubs.dart';
import 'package:athelia/screens/profile/posts.dart';
import 'package:athelia/screens/profile/settings.dart';
import 'package:athelia/screens/profile/stats.dart';
import 'package:athelia/widgets/profile/custom_button.dart';
import 'package:athelia/widgets/profile/option_list.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int selected = 0;

  final String userName = 'Parth Taggar';

  final List<Widget> _optionList = [
    StatsSubSection(),
    ClubsSubSection(),
    PostsSubSection(),
  ];

  void pageChange(index) {
    setState(() {
      selected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Profile Header
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomButton(
                  onClick: () {},
                  buttonIcon: Icons.file_upload_outlined,
                ),
                SizedBox(width: 8),
                CustomButton(
                  buttonIcon: Icons.settings,
                  onClick: () {
                    Navigator.pushNamed(context, SettingsPage.id);
                  },
                ),
              ],
            ),
            //User Avatar
            CircleAvatar(radius: 52),
            // User Name
            Text(
              userName,
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
            ),
            // Some button to view some network or some other things
            TextButton(
              onPressed: () {},
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'View Network',
                    style: TextStyle(color: Color(0xFF0000FF)),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 12,
                    color: Color(0xFF0000FF),
                  ),
                ],
              ),
            ),
            // Edit Profile button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EditProfilePage(),
                  ),
                );
              },
              child: Text('Edit Profile'),
            ),
            OptionList(
              options: ['Stats', 'Clubs', 'Posts'],
              onChanged: pageChange,
            ),
            _optionList[selected],
          ],
        ),
      ),
    );
  }
}
