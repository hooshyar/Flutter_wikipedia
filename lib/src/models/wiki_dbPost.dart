class WikiDBPost {
  WikiDBPost(this.title, this.description, this.imgUrl);

  WikiDBPost.fromMap(Map snapshot)
      : title = snapshot['title'],
        description =
            snapshot['description'] == null ? 'n/a' : snapshot['description'],
        imgUrl = snapshot['thumbnailUrl'];

  final String title;
  final String description;
  final String imgUrl;

  toJson() =>
      {'title': title, 'description': description, 'thumbnailUrl': imgUrl};
}
