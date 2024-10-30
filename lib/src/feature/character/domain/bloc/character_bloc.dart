import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project/src/feature/character/data/dto/character_dto.dart';
import 'package:flutter_project/src/feature/character/data/repo/character_data_repository.dart';
part 'character_events.dart';
part 'character_state.dart';

class CharacterBloc extends Bloc<CharacterEvent, CharacterState> {
  final InterfaceCharacterRepository characterRepo;

  CharacterBloc(
    this.characterRepo
  ) : super(CharacterLoading()) {

  on<LoadCharacterList>((event, emit) async {
    try{
      final List<CharacterDto> characterList = await characterRepo.getAllCharacters(event.page);
      emit(CharacterLoaded(characterList: characterList));
    }catch(e){
      emit(CharacterError());
    }
  });

  on<SearchCharacterList>((event, emit) async{
    try{
      final List<CharacterDto> characterList = await characterRepo.getAllCharacters(event.page, event.name);
      emit(CharacterLoaded(characterList: characterList));
    }catch(e){
      emit(CharacterError());
    }
  });

  }
}
