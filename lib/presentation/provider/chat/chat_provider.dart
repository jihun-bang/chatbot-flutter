import 'package:chatbot/common/logger.dart';
import 'package:chatbot/data/models/chat/chat_history.dart';
import 'package:chatbot/domain/usecases/chat_usecase.dart';
import 'package:flutter/cupertino.dart';

import '../../../data/models/chat/chat_request.dart';
import 'chat_state.dart';

class ChatProvider extends ChangeNotifier {
  final ChatUseCase _chatUseCase;
  final String _sessionId;

  ChatState _state = Loading();
  ChatState get state => _state;

  ChatProvider(this._chatUseCase, this._sessionId) {
    try {
      chatHistoryRef
          .doc(_sessionId)
          .messages
          .orderByCreatedAt()
          .get()
          .then((value) {
        _state = ChatHistory(messages: value.docs.map((e) => e.data).toList());
        notifyListeners();
      });
    } catch (e) {
      Logger.e(e);
      _state = Error();
      notifyListeners();
    }
  }

  void chat(String message) {
    _chatUseCase.chat(ChatRequestModel(
      sessionId: 'test_session',
      userId: 'tester',
      message: message,
    ));
  }
}
