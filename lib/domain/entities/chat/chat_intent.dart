import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_intent.freezed.dart';

@freezed
sealed class ChatIntent with _$ChatIntent {
  factory ChatIntent.send({required String message}) = Send;

  factory ChatIntent.exit() = Exit;
}
