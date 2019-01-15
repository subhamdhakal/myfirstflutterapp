import 'package:flutter/material.dart';
import 'package:practice_flutter_app/model/Comments.dart';
import 'package:practice_flutter_app/repository/CommentsRepository.dart';

class CommentsScreen extends StatefulWidget {
  @override
  _CommentsScreenState createState() => _CommentsScreenState();
}

class _CommentsScreenState extends State<CommentsScreen> with AutomaticKeepAliveClientMixin<CommentsScreen> {
  List<Comments> comments = [];

  @override
  void initState() {
    super.initState();
    loadComments();
  }

  @override
  Widget build(BuildContext context) {
    return (comments.isNotEmpty)?ListView.builder(itemBuilder:_listViewItemBuilder ,itemCount: comments.length):Center(child: CircularProgressIndicator(),);
  }



  void loadComments() async {
    final List<Comments> comments = await CommentsRepository().fetchData();
    setState(() {
      this.comments = comments;
    });
  }

  Widget _listViewItemBuilder(BuildContext context, int index) {
    return ListTile(
      title:_title(index) ,
      subtitle: _subtitle(index),
    );
  }

  Widget _title(int index) {
    return Text('${comments[index].id}   ' + '${comments[index].name}');
  }

  Widget _subtitle(int index) {
    return Text('${comments[index].body}');
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
