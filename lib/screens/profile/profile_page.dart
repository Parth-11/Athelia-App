import 'package:athelia/screens/profile/lists.dart';
import 'package:athelia/screens/profile/stats.dart';
import 'package:athelia/widgets/profile/option_list.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int selected = 0;

  final List<Widget> _optionList = [StatsSubSection(), ListsSubSection()];

  void pageChange(index) {
    setState(() {
      selected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // header Buttons
        Row(),
        //User Avatar
        CircleAvatar(),
        // User Name
        Text(''),
        // Some button to view some network or some other things
        TextButton(onPressed: () {}, child: Text('View Network')),
        // Edit Profile button
        ElevatedButton(onPressed: () {}, child: Text('Edit Profile')),
        OptionList(
          options: ['Stats', 'Lists', 'Reviews', 'Clubs', 'Posts'],
          onChanged: pageChange,
        ),
        _optionList[selected],
      ],
    );
  }
}
