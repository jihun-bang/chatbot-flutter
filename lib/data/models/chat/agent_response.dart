import 'package:json_annotation/json_annotation.dart';

part 'agent_response.g.dart';

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class AgentResponseModel {
  /// AI 채팅 내용
  String output;

  AgentResponseModel({
    required this.output,
  });

  factory AgentResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AgentResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$AgentResponseModelToJson(this);
}
