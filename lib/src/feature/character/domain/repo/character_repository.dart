import 'package:flutter_project/src/feature/character/domain/entities/character_entity.dart';

abstract interface class CharacterEntityRepository {
  Future<List<CharacterEntity>> getAllPeople(int page, [String name]);
}