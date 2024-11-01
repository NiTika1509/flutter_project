import 'package:equatable/equatable.dart';
import 'package:flutter_project/src/feature/character/data/dto/character_dto.dart';

class CharacterEntity extends Equatable{
  final int id;
  final String name;
  final String status;
  final String species;
  final String type;
  final String gender;
  final LocationDto origin;
  final LocationDto location;
  final String image;
  final List<String> episode;
  final String url;
  final DateTime created;

  const CharacterEntity({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.type,
    required this.gender,
    required this.origin,
    required this.location,
    required this.image,
    required this.episode,
    required this.url,
    required this.created
  });

  @override
  List<Object?> get props => [
    id,
    name,
    status,
    species,
    type,
    gender,
    origin,
    location,
    image,
    episode,
    url,
    created
  ];
}