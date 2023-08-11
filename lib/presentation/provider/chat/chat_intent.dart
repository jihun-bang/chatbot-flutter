sealed class ChatIntent {}

class Send extends ChatIntent {
  final String message;

  Send({required this.message});
}

class Exit extends ChatIntent {}
