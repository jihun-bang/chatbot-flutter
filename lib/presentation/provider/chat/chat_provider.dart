import 'package:chatbot/common/logger.dart';
import 'package:chatbot/data/models/chat/chat_history.dart';
import 'package:chatbot/domain/usecases/chat_usecase.dart';
import 'package:flutter/cupertino.dart';

import '../../../data/error/failure.dart';
import '../../../data/models/chat/chat_request.dart';
import '../../../domain/entities/chat/chat_intent.dart';
import '../../../domain/entities/chat/chat_state.dart';

class ChatProvider extends ChangeNotifier {
  final ChatUseCase _chatUseCase;
  final String _sessionId;

  ChatState _state = LoadingState();

  ChatState get state => _state;

  ChatSideEffect? _sideEffect;

  ChatSideEffect? get sideEffect => _sideEffect;

  ChatProvider(this._chatUseCase, this._sessionId) {
    try {
      chatHistoryRef
          .doc(_sessionId)
          .messages
          .orderByCreatedAt()
          .get()
          .then((value) {
        _state =
            CompleteState(messages: value.docs.map((e) => e.data).toList());
        notifyListeners();
      });
    } catch (e) {
      Logger.e(e);
      _state = ErrorState();
      notifyListeners();
    }
  }

  Future<void> processIntent(ChatIntent intent) async {
    switch (intent) {
      case Send(:final message):
        {
          await _send(message);
        }
      case Exit():
        {}
    }
  }

  Future<void> _send(String message) async {
    final old = (state as CompleteState);
    final userMessage = MessageModel(
        id: '',
        createdBy: 'tester',
        data: MessageDataModel(content: message),
        createdAt: DateTime.now(),
        type: MessageType.human);

    _state = old.copyWith(messages: old.messages + [userMessage]);
    _sideEffect = ChatSideEffect.sending();
    notifyListeners();

    final data = await _chatUseCase.chat(ChatRequestModel(
      sessionId: 'test_session',
      userId: 'tester',
      message: message,
    ));

    data.fold(
      (l) {
        if (l is ServerFailure) {
          _sideEffect = ChatSideEffect.sending();
        }
      },
      (r) {
        final old = (state as CompleteState);
        final message = MessageModel(
            id: '',
            createdBy: 'tester',
            data: MessageDataModel(content: r),
            createdAt: DateTime.now(),
            type: MessageType.ai);
        _state = old.copyWith(messages: old.messages + [message]);
        _sideEffect = ChatSideEffect.complete();
        notifyListeners();
      },
    );
  }
}
