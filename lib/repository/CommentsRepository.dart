import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:practice_flutter_app/model/Comments.dart';

class CommentsRepository {
  final String url = "https://jsonplaceholder.typicode.com/comments";

  Future<List<Comments>> fetchData() async {
    final response = await http.get(url);

    if (response.statusCode != 200) {
      throw response.body;
    }

    List<Comments> comments = new List();

    for (var jsonItem in json.decode(response.body)) {
      comments.add(Comments.fromJson(jsonItem));
    }
    return comments;
  }
}
