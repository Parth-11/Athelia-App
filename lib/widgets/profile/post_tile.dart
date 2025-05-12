import 'package:flutter/material.dart';

class PostTile extends StatelessWidget {
  const PostTile({
    super.key,
    required this.title,
    required this.description,
    this.url = '',
    this.onClick,
    this.boxColor,
  });

  final String title;
  final String description;
  final String url;
  final void Function()? onClick;
  final Color? boxColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(24),
        color: boxColor,
      ),
      child: ListTile(
        title: Text(title),
        subtitle: Text(description),
        trailing: Image.network(url),
        onTap: onClick,
      ),
    );
  }
}
