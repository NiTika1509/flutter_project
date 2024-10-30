import 'package:dio/dio.dart';
import 'package:flutter_project/core/error/exception.dart';
import 'package:flutter_project/src/feature/character/data/dto/character_dto.dart';
import 'package:flutter_project/src/feature/character/data/repo/character_data_repository.dart';

class CharacterRemoteDataSource implements InterfaceCharacterRepository {

  final Dio _dio;

  CharacterRemoteDataSource({
    required Dio dio
  }) : _dio = dio;

  @override
  Future<List<CharacterDto>> getAllCharacters(int page, [String name = '']) async{
    try{
      final Response response = await _dio.get(
        'https://rickandmortyapi.com/api/character/',
        queryParameters: {
          'page': page,
          'name': name
        },
      );

      if(response.statusCode != 200){
        throw ServerException();
      }

      final data = response.data['results'] as List;
      final characterList = data.map((character) => CharacterDto.fromJson(character)).toList();
      return characterList;
    }catch(e){
      throw ServerException();
    }
  }
}