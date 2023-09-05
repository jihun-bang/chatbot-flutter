import 'package:chatbot/data/models/chat/chat_request.dart';
import 'package:chatbot/data/models/chat/chat_response.dart';
import 'package:dartz/dartz.dart';

import '../dio/dio_client.dart';
import '../error/failure.dart';
import '../models/chat/agent_response.dart';
import 'list_api.dart';

abstract class ChatRemoteDatasource {
  Future<Either<Failure, ChatResponseModel>> chat(ChatRequestModel params);
  Future<Either<Failure, AgentResponseModel>> agent(ChatRequestModel params);
}

class ChatRemoteDatasourceImpl implements ChatRemoteDatasource {
  final DioClient _client;

  ChatRemoteDatasourceImpl(this._client);

  @override
  Future<Either<Failure, ChatResponseModel>> chat(
      ChatRequestModel params) async {
    final response = await _client.postRequest(
      ListAPI.chat,
      data: params.toJson(),
      converter: (response) =>
          ChatResponseModel.fromJson(response as Map<String, dynamic>),
    );

    return response;
  }

  @override
  Future<Either<Failure, AgentResponseModel>> agent(
      ChatRequestModel params) async {
    final response = await _client.postRequest(
      ListAPI.agent,
      data: params.toJson(),
      converter: (response) =>
          AgentResponseModel.fromJson(response as Map<String, dynamic>),
    );

    return response;
  }
}
