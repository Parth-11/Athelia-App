class Posts {
  const Posts({
    required this.title,
    required this.description,
    required this.postUrl,
    this.imgUrl = '',
  });

  final String title;
  final String description;
  final String postUrl;
  final String imgUrl;
}
