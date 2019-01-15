// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Comments.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Comments _$CommentsFromJson(Map<String, dynamic> json) {
  return Comments(json['id'] as int, json['name'] as String,
      json['email'] as String, json['body'] as String);
}

Map<String, dynamic> _$CommentsToJson(Comments instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'body': instance.body
    };
