import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:practice_flutter_app/model/Posts.dart';

class PostsRepository {
  final String url = "https://jsonplaceholder.typicode.com/posts";
  List<Posts> storedPosts;

  Future<List<Posts>> fetchData() async {
    if(storedPosts!=null)
      return storedPosts;
    final response = await http.get(url);
    if (response.statusCode != 200) {
      throw response.body;
    }
    List<Posts> posts = new List<Posts>();

    for (var jsonItem in json.decode(response.body)) {
      posts.add(Posts.fromJson(jsonItem));
    }
    storedPosts=posts;
    return posts;
  }
}
