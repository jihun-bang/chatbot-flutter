import 'package:chatbot/data/data_sources/chat_remote_datasources.dart';
import 'package:chatbot/data/repositories/chat_repository_impl.dart';
import 'package:chatbot/domain/repositories/chat_repository.dart';
import 'package:chatbot/domain/usecases/chat_usecase.dart';
import 'package:get_it/get_it.dart';

import 'data/dio/dio_client.dart';

GetIt sl = GetIt.instance;

void setupLocator() {
  /// DataSource
  sl.registerLazySingleton(() => DioClient());
  sl.registerLazySingleton<ChatRemoteDatasource>(
    () => ChatRemoteDatasourceImpl(sl()),
  );

  /// Repository
  sl.registerLazySingleton<ChatRepository>(() => ChatRepositoryImpl(sl()));

  /// UseCase
  sl.registerLazySingleton<ChatUseCase>(() => ChatUseCase(sl()));
}
