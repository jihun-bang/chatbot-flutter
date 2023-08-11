import 'package:chatbot/data/models/chat/chat_request.dart';
import 'package:chatbot/domain/repositories/chat_repository.dart';
import 'package:dartz/dartz.dart';

import '../../data/error/failure.dart';

class ChatUseCase {
  final ChatRepository _repo;

  ChatUseCase(this._repo);

  Future<Either<Failure, String>> chat(ChatRequestModel params) =>
      _repo.chat(params);
}
