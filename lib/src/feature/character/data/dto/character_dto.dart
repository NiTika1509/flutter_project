import 'package:flutter_project/src/feature/character/domain/entities/character_entity.dart';

class CharacterDto extends CharacterEntity {
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

  const CharacterDto({
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
    required this.created,
  }) : super(
            id: id,
            name: name,
            status: status,
            species: species,
            type: type,
            gender: gender,
            origin: origin,
            location: location,
            image: image,
            episode: episode,
            url: url,
            created: created
  );

  factory CharacterDto.fromJson(Map<String, dynamic> json) => CharacterDto(
        id: json["id"],
        name: json["name"],
        status: json["status"],
        species: json["species"],
        type: json["type"],
        gender: json["gender"],
        origin: LocationDto.fromMap(json["origin"]),
        location: LocationDto.fromMap(json["location"]),
        image: json["image"],
        episode: List<String>.from(json["episode"].map((x) => x)),
        url: json["url"],
        created: DateTime.parse(json["created"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "status": status,
        "species": species,
        "type": type,
        "gender": gender,
        "origin": origin.toMap(),
        "location": location.toMap(),
        "image": image,
        "episode": List<dynamic>.from(episode.map((x) => x)),
        "url": url,
        "created": created.toIso8601String(),
      };
}

class LocationDto {
  final String name;
  final String url;

  LocationDto({
    required this.name,
    required this.url,
  });

  factory LocationDto.fromMap(Map<String, dynamic> json) => LocationDto(
        name: json["name"],
        url: json["url"],
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "url": url,
      };
}
