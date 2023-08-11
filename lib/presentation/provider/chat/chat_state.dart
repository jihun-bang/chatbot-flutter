import 'package:chatbot/data/models/chat/chat_history.dart';

sealed class ChatState {}

class Loading extends ChatState {}

class Error extends ChatState {}

class ChatHistory extends ChatState {
  final List<MessageModel> userMessages;
  final List<MessageModel> aiMessages;

  ChatHistory({
    required this.userMessages,
    required this.aiMessages,
  });
}
