// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Posts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Posts _$PostsFromJson(Map<String, dynamic> json) {
  return Posts(
      json['id'] as int, json['title'] as String, json['body'] as String);
}

Map<String, dynamic> _$PostsToJson(Posts instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'body': instance.body
    };
