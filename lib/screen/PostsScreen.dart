import 'package:flutter/material.dart';
import 'package:practice_flutter_app/model/Posts.dart';
import 'package:practice_flutter_app/repository/PostsRepository.dart';

class PostsScreen extends StatefulWidget {
  @override
  _PostScreenState createState() => _PostScreenState();
}

class _PostScreenState extends State<PostsScreen> with AutomaticKeepAliveClientMixin<PostsScreen>{
  List<Posts> posts = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  void loadData() async {
    final List<Posts> posts = await PostsRepository().fetchData();
    setState(() {
      this.posts = posts;
    });
  }

  @override
  Widget build(BuildContext context) {
    return (posts.isNotEmpty)? Scaffold(
      body: ListView.builder(itemCount: posts.length,
          itemBuilder: _listViewItemBuilder
      ),
    ):Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _listViewItemBuilder(BuildContext context, int index) {
    final post=this.posts[index];
    return ListTile(
        contentPadding: EdgeInsets.all(10.0),
        title: _itemTitle(post),
        subtitle: _itemSubtitle(post),
        );
  }
  Widget _itemTitle(Posts post) {
    return Text('${post.id} '+'${post.title}');
  }
  Widget _itemSubtitle(Posts post){
    return Text('${post.body}');
  }

  @override
  bool get wantKeepAlive => true;
}
