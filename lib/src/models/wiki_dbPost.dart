class WikiDBPost {
  WikiDBPost(this.pageId, this.title, this.description, this.imgUrl);

  WikiDBPost.fromMap(Map snapshot)
      : 
      pageId = snapshot ['pageId'] == null ? 0 : snapshot['pageId'],
      title = snapshot['title'],
        description =
            snapshot['description'] == null ? 'n/a' : snapshot['description'],
        imgUrl = snapshot['thumbnailUrl'];


  final String title;
  final String description;
  final String imgUrl;
  final num pageId;

  toJson() =>
      {'pageId': pageId,'title': title, 'description': description, 'thumbnailUrl': imgUrl};
}
