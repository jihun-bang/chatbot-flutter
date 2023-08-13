import 'package:json_annotation/json_annotation.dart';

part 'chat_request.g.dart';

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class ChatRequestModel {
  /// 세션 ID
  String sessionId;

  /// 사용자 ID
  String userId;

  @JsonKey(name: 'question')
  String message;

  ChatRequestModel({
    required this.sessionId,
    required this.userId,
    required this.message,
  });

  factory ChatRequestModel.fromJson(Map<String, dynamic> json) =>
      _$ChatRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$ChatRequestModelToJson(this);
}
