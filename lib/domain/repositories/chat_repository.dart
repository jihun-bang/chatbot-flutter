import 'package:chatbot/data/models/chat/chat_request.dart';
import 'package:dartz/dartz.dart';

import '../../data/error/failure.dart';

abstract class ChatRepository {
  Future<Either<Failure, String>> chat(ChatRequestModel params);
}
