import 'package:chatbot/data/models/chat/chat_request.dart';
import 'package:chatbot/data/models/chat/chat_response.dart';
import 'package:dartz/dartz.dart';

import '../dio/dio_client.dart';
import '../error/failure.dart';
import 'list_api.dart';

abstract class ChatRemoteDatasource {
  Future<Either<Failure, ChatResponseModel>> chat(ChatRequestModel params);
}

class ChatRemoteDatasourceImpl implements ChatRemoteDatasource {
  final DioClient _client;

  ChatRemoteDatasourceImpl(this._client);

  @override
  Future<Either<Failure, ChatResponseModel>> chat(
      ChatRequestModel registerParams) async {
    final response = await _client.postRequest(
      ListAPI.chat,
      data: registerParams.toJson(),
      converter: (response) =>
          ChatResponseModel.fromJson(response as Map<String, dynamic>),
    );

    return response;
  }
}