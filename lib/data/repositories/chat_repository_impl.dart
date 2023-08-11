import 'package:chatbot/data/data_sources/chat_remote_datasources.dart';
import 'package:chatbot/data/models/chat/chat_request.dart';
import 'package:chatbot/domain/repositories/chat_repository.dart';
import 'package:dartz/dartz.dart';

import '../error/failure.dart';

class ChatRepositoryImpl implements ChatRepository {
  final ChatRemoteDatasource chatRemoteDatasource;

  const ChatRepositoryImpl(this.chatRemoteDatasource);

  @override
  Future<Either<Failure, String>> chat(ChatRequestModel params) async {
    final response = await chatRemoteDatasource.chat(params);

    return response.fold(
      (failure) => Left(failure),
      (response) {
        return Right(response.text);
      },
    );
  }
}
