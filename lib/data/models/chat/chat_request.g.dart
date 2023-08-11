// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'chat_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatRequestModel _$ChatRequestModelFromJson(Map<String, dynamic> json) =>
    ChatRequestModel(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      message: json['question'] as String,
    );

const _$ChatRequestModelFieldMap = <String, String>{
  'id': 'id',
  'userId': 'user_id',
  'message': 'question',
};

Map<String, dynamic> _$ChatRequestModelToJson(ChatRequestModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'question': instance.message,
    };
