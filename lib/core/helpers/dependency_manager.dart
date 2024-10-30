import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_project/src/feature/character/data/repo/character_data_repository.dart';
import 'package:flutter_project/src/feature/character/data/source/character_remote_data_source.dart';

class DependencyManager {

  // TODO: Инициализация зависимостей
  static void init() {
    GetIt.I.registerLazySingleton<InterfaceCharacterRepository>(
            () => CharacterRemoteDataSource(dio: Dio())
    );
  }

  // TODO: Удаление зависимости
  static void dispose() {

  }
}