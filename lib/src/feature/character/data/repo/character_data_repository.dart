import 'package:flutter_project/src/feature/character/data/dto/character_dto.dart';

abstract interface class InterfaceCharacterRepository {

  /// Gets the list of characters from API for the given page number.
  ///
  /// Page number starts from 1.
  ///
  /// Returns a list of [CharacterDto] on success.
  Future<List<CharacterDto>> getAllCharacters(int page, [String name]);
}