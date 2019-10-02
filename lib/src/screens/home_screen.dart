import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:kpedia/src/models/wiki_dbPost.dart';
import 'package:kpedia/src/models/wiki_post_model.dart';
import 'package:kpedia/src/services/database.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  List<WikiDBPost> dbPosts;
  DatabaseService _db = DatabaseService();
  final String apiUrl =
      'https://en.wikipedia.org/api/rest_v1/page/related/kurd';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wikipedia in kurdish'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                child: FutureBuilder(
                  future: listWikiPosts(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return LinearProgressIndicator();
                    } else {
                      WikiPost wikiPosts = snapshot.data;
                      return Container(
                        height: 500,
                        width: 500,
                        child: ListView.builder(
                            itemCount: wikiPosts.pages.length,
                            itemBuilder: (context, i) {
                              return listItem(wikiPosts, i);
                            }),
                      );
                    }
                  },
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: StreamBuilder(
                  stream: _db.fetchData().asStream(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return CircularProgressIndicator();
                    } else {
                      dbPosts = snapshot.data;
                      return ListView.builder(
                          itemCount: snapshot.data.length,
                          itemBuilder: (context, i) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(dbPosts[i].title),
                                  Text(dbPosts[i].description),
                                  Image.network(dbPosts[i].imgUrl),
                                ],
                              ),
                            );
                          });
                    }
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget listItem(WikiPost thePost, int i) {
    return Container(
      child: ListTile(
        title: Text(thePost.pages[i].title),
        subtitle: thePost.pages[i].description != null
            ? Text(thePost.pages[i].description)
            : Container(),
        leading: thePost.pages[i].thumbnail == null
            ? Container(
                height: 50,
                width: 50,
              )
            : Image.network(
                thePost.pages[i].thumbnail.source,
                scale: 1.0,
              ),
        trailing: IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              bool duplicate = false;
              dbPosts.forEach((f) {
                if (f.title == thePost.pages[i].title) {
                  duplicate = true;
                }
              });
              duplicate == false
                  ? _db.addData(
                      {
                        'title': thePost.pages[i].title,
                        'description': thePost.pages[i].description,
                        'thumbnailUrl': thePost.pages[i].thumbnail.source
                      },
                    )
                  : debugPrint('Duplicate');
              setState(() {});
            }),
      ),
    );
  }

  Future<WikiPost> listWikiPosts(
      {List<int> categoryIDs,
      bool injectObjects: false,
      List<int> excludeIDs,
      int page: 1,
      int perPage: 10}) async {
    String _endpoint = apiUrl;
    print(_endpoint);

    Map postMaps = await _get(_endpoint);
    print(_endpoint);
    var xali;
    xali = WikiPost.fromMap(postMaps);
    debugPrint(xali.toString());
    return xali;
  }

  Future _get(String url) async {
    dynamic jsonObj;
    String endpoint = '$url';
    print("END POINT is " + endpoint);
    try {
      http.Response response =
          await http.get(endpoint, headers: {"Accept": "application/json"});
      debugPrint('response recived + $response');
      // Error handling
      if (response.statusCode != 200) {
        print("status code != 200");
        return null;
      }
      jsonObj = json.decode(response.body);
    } catch (e) {
      debugPrint('Error in GET call to $endpoint');
    }

    if (jsonObj is List) {
      return jsonObj.map((item) => item as Map).toList();
    } else {
      debugPrint('json obj is not a list');
    }

    return jsonObj;
  }
}
