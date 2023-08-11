import 'package:json_annotation/json_annotation.dart';

part 'chat_response.g.dart';

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class ChatResponseModel {
  /// AI 채팅 내용
  String text;

  ChatResponseModel({
    required this.text,
  });

  factory ChatResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ChatResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$ChatResponseModelToJson(this);
}
