import 'package:json_annotation/json_annotation.dart';

part 'Comments.g.dart';

@JsonSerializable()
class Comments {
  final int id;
  final String name;
  final String email;
  final String body;

  Comments(this.id, this.name, this.email, this.body);

  factory Comments.fromJson(Map<String, dynamic> json) =>
      _$CommentsFromJson(json);

  Map<String, dynamic> toJson() => _$CommentsToJson(this);
}
