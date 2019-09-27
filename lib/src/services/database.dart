import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:kpedia/src/models/wiki_dbPost.dart';

class DatabaseService {
  final CollectionReference colRed = Firestore.instance.collection('pages');

  Future<List<WikiDBPost>> fetchData() async {
    final List<WikiDBPost> wikiDBposts = [];
    QuerySnapshot post = await colRed.getDocuments();
    for (int i = 0; i < post.documents.length; i++) {
      wikiDBposts.add(WikiDBPost.fromMap(post.documents[i].data));
    }
    return wikiDBposts;
  }

  Future<void> addData(Map<String, dynamic> data) {
    debugPrint(data.toString() + ' has been written to thw e db');

    try {
      return colRed.add(data).then((onValue) => debugPrint(onValue.toString()));
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
