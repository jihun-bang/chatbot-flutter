// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'chat_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatRequestModel _$ChatRequestModelFromJson(Map<String, dynamic> json) =>
    ChatRequestModel(
      sessionId: json['session_id'] as String,
      userId: json['user_id'] as String,
      message: json['question'] as String,
    );

const _$ChatRequestModelFieldMap = <String, String>{
  'sessionId': 'session_id',
  'userId': 'user_id',
  'message': 'question',
};

Map<String, dynamic> _$ChatRequestModelToJson(ChatRequestModel instance) =>
    <String, dynamic>{
      'session_id': instance.sessionId,
      'user_id': instance.userId,
      'question': instance.message,
    };
