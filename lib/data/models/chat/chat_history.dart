import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../common/utils.dart';

part 'chat_history.g.dart';

@CopyWith()
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class ChatHistoryModel {
  /// 세션 ID
  @Id()
  String id;

  /// 사용자 ID
  String userId;

  /// 채팅 내역
  List<MessageModel> messages;

  ChatHistoryModel({
    required this.id,
    required this.userId,
    this.messages = const [],
  });

  factory ChatHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$ChatHistoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$ChatHistoryModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MessageModel {
  /// 메시지 ID
  @Id()
  String id;

  /// 채팅한 사용자 ID
  String createdBy;

  /// 채팅 데이터
  MessageDataModel data;

  /// 채팅 시간
  @JsonKey(fromJson: dateTimeFromTimestamp)
  final DateTime? createdAt;

  /// 채팅 주체
  final MessageType type;

  MessageModel({
    required this.id,
    required this.createdBy,
    required this.data,
    required this.createdAt,
    required this.type,
  });

  factory MessageModel.fromJson(Map<String, dynamic> json) =>
      _$MessageModelFromJson(json);

  Map<String, dynamic> toJson() => _$MessageModelToJson(this);
}

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class MessageDataModel {
  Map<String, dynamic> additionalKwargs;

  /// 채팅 내용
  String content;

  MessageDataModel({
    required this.additionalKwargs,
    required this.content,
  });

  factory MessageDataModel.fromJson(Map<String, dynamic> json) =>
      _$MessageDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$MessageDataModelToJson(this);
}

enum MessageType { ai, human }

@Collection<MessageModel>('chat_history/*/messages')
@Collection<ChatHistoryModel>('chat_history')
final chatHistoryRef = ChatHistoryModelCollectionReference();
