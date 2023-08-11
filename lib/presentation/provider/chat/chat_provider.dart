import 'package:chatbot/domain/usecases/chat_usecase.dart';
import 'package:flutter/cupertino.dart';

import '../../../data/models/chat/chat_request.dart';
import 'chat_state.dart';

class ChatProvider extends ChangeNotifier {
  final ChatUseCase _chatUseCase;
  final String _sessionId;
  final ChatState _state = Loading();
  ChatState get state => _state;

  ChatProvider(this._chatUseCase, this._sessionId);

  void chat(String message) {
    _chatUseCase.chat(ChatRequestModel(
      id: 'test_session',
      userId: 'tester',
      message: message,
    ));
  }
}
