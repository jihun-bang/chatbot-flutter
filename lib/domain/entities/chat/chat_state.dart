import 'package:chatbot/data/models/chat/chat_history.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_state.freezed.dart';

@freezed
sealed class ChatState with _$ChatState {
  factory ChatState.loading() = LoadingState;
  factory ChatState.error() = ErrorState;
  factory ChatState.complete({required List<MessageModel> messages}) =
      CompleteState;
}

@freezed
sealed class ChatSideEffect with _$ChatSideEffect {
  factory ChatSideEffect.sending() = Sending;
  factory ChatSideEffect.error() = SendError;
  factory ChatSideEffect.complete() = SendComplete;
}
