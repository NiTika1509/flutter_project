part of 'character_bloc.dart';

class CharacterState {}

class CharacterLoading extends CharacterState {}

class CharacterLoaded extends CharacterState {
  CharacterLoaded({
    required this.characterList
  });

  final List<CharacterDto> characterList;
}

class CharacterError extends CharacterState{

}