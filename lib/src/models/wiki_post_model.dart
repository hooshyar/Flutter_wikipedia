//// To parse this JSON data, do
////
////     final wikiPost = wikiPostFromJson(jsonString);
//
//import 'dart:convert';
//
//WikiPost wikiPostFromJson(String str) => WikiPost.fromMap(json.decode(str));
//
//String wikiPostToJson(WikiPost data) => json.encode(data.toMap());
//
//class WikiPost {
//  String type;
//  String title;
//  String displaytitle;
//  Namespace namespace;
//  String wikibaseItem;
//  Titles titles;
//  int pageid;
//  Originalimage thumbnail;
//  Originalimage originalimage;
//  String lang;
//  String dir;
//  String revision;
//  String tid;
//  DateTime timestamp;
//  String description;
//  ContentUrls contentUrls;
//  ApiUrls apiUrls;
//  String extract;
//  String extractHtml;
//
//  WikiPost({
//    this.type,
//    this.title,
//    this.displaytitle,
//    this.namespace,
//    this.wikibaseItem,
//    this.titles,
//    this.pageid,
//    this.thumbnail,
//    this.originalimage,
//    this.lang,
//    this.dir,
//    this.revision,
//    this.tid,
//    this.timestamp,
//    this.description,
//    this.contentUrls,
//    this.apiUrls,
//    this.extract,
//    this.extractHtml,
//  });
//
//  factory WikiPost.fromMap(Map<String, dynamic> json) => WikiPost(
//        type: json["type"] == null ? null : json["type"],
//        title: json["title"] == null ? null : json["title"],
//        displaytitle:
//            json["displaytitle"] == null ? null : json["displaytitle"],
//        namespace: json["namespace"] == null
//            ? null
//            : Namespace.fromMap(json["namespace"]),
//        wikibaseItem:
//            json["wikibase_item"] == null ? null : json["wikibase_item"],
//        titles: json["titles"] == null ? null : Titles.fromMap(json["titles"]),
//        pageid: json["pageid"] == null ? null : json["pageid"],
//        thumbnail: json["thumbnail"] == null
//            ? null
//            : Originalimage.fromMap(json["thumbnail"]),
//        originalimage: json["originalimage"] == null
//            ? null
//            : Originalimage.fromMap(json["originalimage"]),
//        lang: json["lang"] == null ? null : json["lang"],
//        dir: json["dir"] == null ? null : json["dir"],
//        revision: json["revision"] == null ? null : json["revision"],
//        tid: json["tid"] == null ? null : json["tid"],
//        timestamp: json["timestamp"] == null
//            ? null
//            : DateTime.parse(json["timestamp"]),
//        description: json["description"] == null ? null : json["description"],
//        contentUrls: json["content_urls"] == null
//            ? null
//            : ContentUrls.fromMap(json["content_urls"]),
//        apiUrls:
//            json["api_urls"] == null ? null : ApiUrls.fromMap(json["api_urls"]),
//        extract: json["extract"] == null ? null : json["extract"],
//        extractHtml: json["extract_html"] == null ? null : json["extract_html"],
//      );
//
//  Map<String, dynamic> toMap() => {
//        "type": type == null ? null : type,
//        "title": title == null ? null : title,
//        "displaytitle": displaytitle == null ? null : displaytitle,
//        "namespace": namespace == null ? null : namespace.toMap(),
//        "wikibase_item": wikibaseItem == null ? null : wikibaseItem,
//        "titles": titles == null ? null : titles.toMap(),
//        "pageid": pageid == null ? null : pageid,
//        "thumbnail": thumbnail == null ? null : thumbnail.toMap(),
//        "originalimage": originalimage == null ? null : originalimage.toMap(),
//        "lang": lang == null ? null : lang,
//        "dir": dir == null ? null : dir,
//        "revision": revision == null ? null : revision,
//        "tid": tid == null ? null : tid,
//        "timestamp": timestamp == null ? null : timestamp.toIso8601String(),
//        "description": description == null ? null : description,
//        "content_urls": contentUrls == null ? null : contentUrls.toMap(),
//        "api_urls": apiUrls == null ? null : apiUrls.toMap(),
//        "extract": extract == null ? null : extract,
//        "extract_html": extractHtml == null ? null : extractHtml,
//      };
//}
//
//class ApiUrls {
//  String summary;
//  String metadata;
//  String references;
//  String media;
//  String editHtml;
//  String talkPageHtml;
//
//  ApiUrls({
//    this.summary,
//    this.metadata,
//    this.references,
//    this.media,
//    this.editHtml,
//    this.talkPageHtml,
//  });
//
//  factory ApiUrls.fromMap(Map<String, dynamic> json) => ApiUrls(
//        summary: json["summary"] == null ? null : json["summary"],
//        metadata: json["metadata"] == null ? null : json["metadata"],
//        references: json["references"] == null ? null : json["references"],
//        media: json["media"] == null ? null : json["media"],
//        editHtml: json["edit_html"] == null ? null : json["edit_html"],
//        talkPageHtml:
//            json["talk_page_html"] == null ? null : json["talk_page_html"],
//      );
//
//  Map<String, dynamic> toMap() => {
//        "summary": summary == null ? null : summary,
//        "metadata": metadata == null ? null : metadata,
//        "references": references == null ? null : references,
//        "media": media == null ? null : media,
//        "edit_html": editHtml == null ? null : editHtml,
//        "talk_page_html": talkPageHtml == null ? null : talkPageHtml,
//      };
//}
//
//class ContentUrls {
//  Desktop desktop;
//  Desktop mobile;
//
//  ContentUrls({
//    this.desktop,
//    this.mobile,
//  });
//
//  factory ContentUrls.fromMap(Map<String, dynamic> json) => ContentUrls(
//        desktop:
//            json["desktop"] == null ? null : Desktop.fromMap(json["desktop"]),
//        mobile: json["mobile"] == null ? null : Desktop.fromMap(json["mobile"]),
//      );
//
//  Map<String, dynamic> toMap() => {
//        "desktop": desktop == null ? null : desktop.toMap(),
//        "mobile": mobile == null ? null : mobile.toMap(),
//      };
//}
//
//class Desktop {
//  String page;
//  String revisions;
//  String edit;
//  String talk;
//
//  Desktop({
//    this.page,
//    this.revisions,
//    this.edit,
//    this.talk,
//  });
//
//  factory Desktop.fromMap(Map<String, dynamic> json) => Desktop(
//        page: json["page"] == null ? null : json["page"],
//        revisions: json["revisions"] == null ? null : json["revisions"],
//        edit: json["edit"] == null ? null : json["edit"],
//        talk: json["talk"] == null ? null : json["talk"],
//      );
//
//  Map<String, dynamic> toMap() => {
//        "page": page == null ? null : page,
//        "revisions": revisions == null ? null : revisions,
//        "edit": edit == null ? null : edit,
//        "talk": talk == null ? null : talk,
//      };
//}
//
//class Namespace {
//  int id;
//  String text;
//
//  Namespace({
//    this.id,
//    this.text,
//  });
//
//  factory Namespace.fromMap(Map<String, dynamic> json) => Namespace(
//        id: json["id"] == null ? null : json["id"],
//        text: json["text"] == null ? null : json["text"],
//      );
//
//  Map<String, dynamic> toMap() => {
//        "id": id == null ? null : id,
//        "text": text == null ? null : text,
//      };
//}
//
//class Originalimage {
//  String source;
//  int width;
//  int height;
//
//  Originalimage({
//    this.source,
//    this.width,
//    this.height,
//  });
//
//  factory Originalimage.fromMap(Map<String, dynamic> json) => Originalimage(
//        source: json["source"] == null ? null : json["source"],
//        width: json["width"] == null ? null : json["width"],
//        height: json["height"] == null ? null : json["height"],
//      );
//
//  Map<String, dynamic> toMap() => {
//        "source": source == null ? null : source,
//        "width": width == null ? null : width,
//        "height": height == null ? null : height,
//      };
//}
//
//class Titles {
//  String canonical;
//  String normalized;
//  String display;
//
//  Titles({
//    this.canonical,
//    this.normalized,
//    this.display,
//  });
//
//  factory Titles.fromMap(Map<String, dynamic> json) => Titles(
//        canonical: json["canonical"] == null ? null : json["canonical"],
//        normalized: json["normalized"] == null ? null : json["normalized"],
//        display: json["display"] == null ? null : json["display"],
//      );
//
//  Map<String, dynamic> toMap() => {
//        "canonical": canonical == null ? null : canonical,
//        "normalized": normalized == null ? null : normalized,
//        "display": display == null ? null : display,
//      };
//}
// To parse this JSON data, do
//
//     final wikiPost = wikiPostFromJson(jsonString);

import 'dart:convert';

WikiPost wikiPostFromJson(String str) => WikiPost.fromMap(json.decode(str));

String wikiPostToJson(WikiPost data) => json.encode(data.toMap());

class WikiPost {
  List<Page> pages;

  WikiPost({
    this.pages,
  });

  factory WikiPost.fromMap(Map<String, dynamic> json) => WikiPost(
        pages: json["pages"] == null
            ? null
            : List<Page>.from(json["pages"].map((x) => Page.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "pages": pages == null
            ? null
            : List<dynamic>.from(pages.map((x) => x.toMap())),
      };
}

class Page {
  int pageid;
  int ns;
  int index;
  Type type;
  String title;
  String displaytitle;
  Namespace namespace;
  String wikibaseItem;
  Titles titles;
  Originalimage thumbnail;
  Originalimage originalimage;
  Lang lang;
  Dir dir;
  String revision;
  String tid;
  DateTime timestamp;
  String description;
  ContentUrls contentUrls;
  ApiUrls apiUrls;
  String extract;
  String extractHtml;
  String normalizedtitle;
  Coordinates coordinates;

  Page({
    this.pageid,
    this.ns,
    this.index,
    this.type,
    this.title,
    this.displaytitle,
    this.namespace,
    this.wikibaseItem,
    this.titles,
    this.thumbnail,
    this.originalimage,
    this.lang,
    this.dir,
    this.revision,
    this.tid,
    this.timestamp,
    this.description,
    this.contentUrls,
    this.apiUrls,
    this.extract,
    this.extractHtml,
    this.normalizedtitle,
    this.coordinates,
  });

  factory Page.fromMap(Map<String, dynamic> json) => Page(
        pageid: json["pageid"] == null ? null : json["pageid"],
        ns: json["ns"] == null ? null : json["ns"],
        index: json["index"] == null ? null : json["index"],
        type: json["type"] == null ? null : typeValues.map[json["type"]],
        title: json["title"] == null ? null : json["title"],
        displaytitle:
            json["displaytitle"] == null ? null : json["displaytitle"],
        namespace: json["namespace"] == null
            ? null
            : Namespace.fromMap(json["namespace"]),
        wikibaseItem:
            json["wikibase_item"] == null ? null : json["wikibase_item"],
        titles: json["titles"] == null ? null : Titles.fromMap(json["titles"]),
        thumbnail: json["thumbnail"] == null
            ? null
            : Originalimage.fromMap(json["thumbnail"]),
        originalimage: json["originalimage"] == null
            ? null
            : Originalimage.fromMap(json["originalimage"]),
        lang: json["lang"] == null ? null : langValues.map[json["lang"]],
        dir: json["dir"] == null ? null : dirValues.map[json["dir"]],
        revision: json["revision"] == null ? null : json["revision"],
        tid: json["tid"] == null ? null : json["tid"],
        timestamp: json["timestamp"] == null
            ? null
            : DateTime.parse(json["timestamp"]),
        description: json["description"] == null ? null : json["description"],
        contentUrls: json["content_urls"] == null
            ? null
            : ContentUrls.fromMap(json["content_urls"]),
        apiUrls:
            json["api_urls"] == null ? null : ApiUrls.fromMap(json["api_urls"]),
        extract: json["extract"] == null ? null : json["extract"],
        extractHtml: json["extract_html"] == null ? null : json["extract_html"],
        normalizedtitle:
            json["normalizedtitle"] == null ? null : json["normalizedtitle"],
        coordinates: json["coordinates"] == null
            ? null
            : Coordinates.fromMap(json["coordinates"]),
      );

  Map<String, dynamic> toMap() => {
        "pageid": pageid == null ? null : pageid,
        "ns": ns == null ? null : ns,
        "index": index == null ? null : index,
        "type": type == null ? null : typeValues.reverse[type],
        "title": title == null ? null : title,
        "displaytitle": displaytitle == null ? null : displaytitle,
        "namespace": namespace == null ? null : namespace.toMap(),
        "wikibase_item": wikibaseItem == null ? null : wikibaseItem,
        "titles": titles == null ? null : titles.toMap(),
        "thumbnail": thumbnail == null ? null : thumbnail.toMap(),
        "originalimage": originalimage == null ? null : originalimage.toMap(),
        "lang": lang == null ? null : langValues.reverse[lang],
        "dir": dir == null ? null : dirValues.reverse[dir],
        "revision": revision == null ? null : revision,
        "tid": tid == null ? null : tid,
        "timestamp": timestamp == null ? null : timestamp.toIso8601String(),
        "description": description == null ? null : description,
        "content_urls": contentUrls == null ? null : contentUrls.toMap(),
        "api_urls": apiUrls == null ? null : apiUrls.toMap(),
        "extract": extract == null ? null : extract,
        "extract_html": extractHtml == null ? null : extractHtml,
        "normalizedtitle": normalizedtitle == null ? null : normalizedtitle,
        "coordinates": coordinates == null ? null : coordinates.toMap(),
      };
}

class ApiUrls {
  String summary;
  String metadata;
  String references;
  String media;
  String editHtml;
  String talkPageHtml;

  ApiUrls({
    this.summary,
    this.metadata,
    this.references,
    this.media,
    this.editHtml,
    this.talkPageHtml,
  });

  factory ApiUrls.fromMap(Map<String, dynamic> json) => ApiUrls(
        summary: json["summary"] == null ? null : json["summary"],
        metadata: json["metadata"] == null ? null : json["metadata"],
        references: json["references"] == null ? null : json["references"],
        media: json["media"] == null ? null : json["media"],
        editHtml: json["edit_html"] == null ? null : json["edit_html"],
        talkPageHtml:
            json["talk_page_html"] == null ? null : json["talk_page_html"],
      );

  Map<String, dynamic> toMap() => {
        "summary": summary == null ? null : summary,
        "metadata": metadata == null ? null : metadata,
        "references": references == null ? null : references,
        "media": media == null ? null : media,
        "edit_html": editHtml == null ? null : editHtml,
        "talk_page_html": talkPageHtml == null ? null : talkPageHtml,
      };
}

class ContentUrls {
  Desktop desktop;
  Desktop mobile;

  ContentUrls({
    this.desktop,
    this.mobile,
  });

  factory ContentUrls.fromMap(Map<String, dynamic> json) => ContentUrls(
        desktop:
            json["desktop"] == null ? null : Desktop.fromMap(json["desktop"]),
        mobile: json["mobile"] == null ? null : Desktop.fromMap(json["mobile"]),
      );

  Map<String, dynamic> toMap() => {
        "desktop": desktop == null ? null : desktop.toMap(),
        "mobile": mobile == null ? null : mobile.toMap(),
      };
}

class Desktop {
  String page;
  String revisions;
  String edit;
  String talk;

  Desktop({
    this.page,
    this.revisions,
    this.edit,
    this.talk,
  });

  factory Desktop.fromMap(Map<String, dynamic> json) => Desktop(
        page: json["page"] == null ? null : json["page"],
        revisions: json["revisions"] == null ? null : json["revisions"],
        edit: json["edit"] == null ? null : json["edit"],
        talk: json["talk"] == null ? null : json["talk"],
      );

  Map<String, dynamic> toMap() => {
        "page": page == null ? null : page,
        "revisions": revisions == null ? null : revisions,
        "edit": edit == null ? null : edit,
        "talk": talk == null ? null : talk,
      };
}

class Coordinates {
  int lat;
  int lon;

  Coordinates({
    this.lat,
    this.lon,
  });

  factory Coordinates.fromMap(Map<String, dynamic> json) => Coordinates(
        lat: json["lat"] == null ? null : json["lat"],
        lon: json["lon"] == null ? null : json["lon"],
      );

  Map<String, dynamic> toMap() => {
        "lat": lat == null ? null : lat,
        "lon": lon == null ? null : lon,
      };
}

enum Dir { LTR }

final dirValues = EnumValues({"ltr": Dir.LTR});

enum Lang { EN }

final langValues = EnumValues({"en": Lang.EN});

class Namespace {
  int id;
  String text;

  Namespace({
    this.id,
    this.text,
  });

  factory Namespace.fromMap(Map<String, dynamic> json) => Namespace(
        id: json["id"] == null ? null : json["id"],
        text: json["text"] == null ? null : json["text"],
      );

  Map<String, dynamic> toMap() => {
        "id": id == null ? null : id,
        "text": text == null ? null : text,
      };
}

class Originalimage {
  String source;
  int width;
  int height;

  Originalimage({
    this.source,
    this.width,
    this.height,
  });

  factory Originalimage.fromMap(Map<String, dynamic> json) => Originalimage(
        source: json["source"] == null ? null : json["source"],
        width: json["width"] == null ? null : json["width"],
        height: json["height"] == null ? null : json["height"],
      );

  Map<String, dynamic> toMap() => {
        "source": source == null ? null : source,
        "width": width == null ? null : width,
        "height": height == null ? null : height,
      };
}

class Titles {
  String canonical;
  String normalized;
  String display;

  Titles({
    this.canonical,
    this.normalized,
    this.display,
  });

  factory Titles.fromMap(Map<String, dynamic> json) => Titles(
        canonical: json["canonical"] == null ? null : json["canonical"],
        normalized: json["normalized"] == null ? null : json["normalized"],
        display: json["display"] == null ? null : json["display"],
      );

  Map<String, dynamic> toMap() => {
        "canonical": canonical == null ? null : canonical,
        "normalized": normalized == null ? null : normalized,
        "display": display == null ? null : display,
      };
}

enum Type { STANDARD }

final typeValues = EnumValues({"standard": Type.STANDARD});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
