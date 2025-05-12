import 'package:athelia/widgets/profile/custom_card.dart';
import 'package:athelia/widgets/profile/post_tile.dart';
import 'package:flutter/material.dart';

class PostsSubSection extends StatelessWidget {
  const PostsSubSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomCard(
              heading: 'Posts',
              icon: Icons.photo_size_select_actual_outlined,
              metric: 'Likes',
              boxColor: Colors.grey.shade300,
            ),
            CustomCard(
              heading: 'Posts',
              icon: Icons.photo_size_select_actual_outlined,
              metric: 'Likes',
              boxColor: Colors.grey.shade300,
            ),
          ],
        ),
        SizedBox(height: 10),
        Divider(height: 16, thickness: 4, color: Colors.black),
        Padding(padding: const EdgeInsets.all(8.0), child: Text('User Posts')),
        PostTile(title: 'SomeText', description: 'SomeText2'),
      ],
    );
  }
}
