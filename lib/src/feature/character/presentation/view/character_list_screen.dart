import 'dart:async';

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project/core/design/constants/colors.dart';
import 'package:flutter_project/core/design/constants/images.dart';
import 'package:flutter_project/src/feature/character/data/repo/character_data_repository.dart';
import 'package:flutter_project/src/feature/character/domain/bloc/character_bloc.dart';
import 'package:flutter_project/src/feature/character/presentation/widgets/character_error_state_widget.dart';
import 'package:get_it/get_it.dart';
import '../widgets/character_card_widget.dart';

@RoutePage()
class CharacterListScreen extends StatefulWidget {
  const CharacterListScreen({super.key});

  @override
  State<CharacterListScreen> createState() => _CharacterListState();
}

class _CharacterListState extends State<CharacterListScreen> {

  final _characterBloc = CharacterBloc(GetIt.I<InterfaceCharacterRepository>());

  int _currentPage = 1;

  Timer? _searchTimer;

  @override
  void initState() {
    super.initState();
    _characterBloc.add(LoadCharacterList(page: _currentPage));
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => _characterBloc,
      child: Scaffold(
          backgroundColor: backgroundColor,
          appBar: AppBar(
            backgroundColor: primaryColor,
            leading: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: logotypeApplication,
            ),
            toolbarHeight: 90,
            title: Padding(
                padding: const EdgeInsets.all(5.0),
                child: TextField(
                  style: const TextStyle(
                      fontSize: 20,
                      color: backgroundColor,
                      fontWeight: FontWeight.bold
                  ),
                  decoration: InputDecoration(
                    hintText: 'Search',
                    prefixIcon: const Icon(Icons.search),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 2.0,
                          style: BorderStyle.solid,
                          color: backgroundColor),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 5, vertical: 12),
                  ),
                  onChanged:(value) {
                    _currentPage = 1;
                    _searchTimer?.cancel();
                    _searchTimer = Timer(const Duration(seconds: 2), (){
                      _characterBloc.add(SearchCharacterList(page: _currentPage, name: value));
                    }) ;
                  },
                ),
              ),
          ),
          body: Column(
            children: [
              Expanded(
                child: BlocBuilder<CharacterBloc, CharacterState>(
                  bloc: _characterBloc,
                  builder: (context, state) {
                    if(state is CharacterLoaded) {
                      return ListView.separated(
                          shrinkWrap: true,
                          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                          separatorBuilder: (_,i) => const SizedBox(height: 15,),
                          itemCount: state.characterList.length,
                          itemBuilder: (_,i) {
                            final item = state.characterList[i];
                            return InkWell(
                              borderRadius: BorderRadius.circular(15),
                              onTap: () {},
                              child: CharacterCardWidget(character: item),
                            );
                          },
                      );
                    } else if(state is CharacterError){
                      return const CharacterErrorStateWidget();
                    }else{
                      return const Center(
                          child: CircularProgressIndicator()
                        );
                    }
                  },
                ),
              ),
            ],
          )
      ),
    );
  }
}
