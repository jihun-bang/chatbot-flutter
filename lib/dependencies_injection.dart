import 'package:chatbot/data/data_sources/chat_remote_datasources.dart';
import 'package:get_it/get_it.dart';

import 'data/dio/dio_client.dart';

GetIt sl = GetIt.instance;

void setupLocator() {
  /// Network
  sl.registerLazySingleton(() => DioClient());
  sl.registerLazySingleton<ChatRemoteDatasource>(
    () => ChatRemoteDatasourceImpl(sl()),
  );
}
