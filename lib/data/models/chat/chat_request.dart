import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:json_annotation/json_annotation.dart';

part 'chat_request.g.dart';

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class ChatRequestModel {
  /// 세션 ID
  @Id()
  String id;

  /// 사용자 ID
  String userId;

  ChatRequestModel({
    required this.id,
    required this.userId,
  });

  factory ChatRequestModel.fromJson(Map<String, dynamic> json) =>
      _$ChatRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$ChatRequestModelToJson(this);
}
