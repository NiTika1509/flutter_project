part of 'character_bloc.dart';

class CharacterEvent {}

class LoadCharacterList extends CharacterEvent{

  LoadCharacterList({
    required this.page,
  });

  final int page;
}

class SearchCharacterList extends CharacterEvent{

  SearchCharacterList({
    required this.page,
    required this.name
  });

  int page;
  final String name;
}

