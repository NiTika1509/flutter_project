import 'package:flutter/material.dart';
import 'package:flutter_project/core/design/constants/colors.dart';
import 'package:flutter_project/src/feature/character/data/dto/character_dto.dart';

class CharacterCardWidget extends StatelessWidget {
  const CharacterCardWidget({
    super.key,
    required this.character
  });

  final CharacterDto character;

  static const Map<String, Color> statusMark = {
    'Dead': Color(0xFFd63d2e),
    'Alive': Color(0xFF55cc44),
    'unknown': Color(0xFF9e9e9e)
  };

  @override
  Widget build(BuildContext context) {
    return Card(
      color: foregroundColor,
      child: Row(
        children: [
          ClipRRect(
              borderRadius: const BorderRadius.horizontal(
                  left: Radius.circular(12)
              ),
              child: Image.network(
                character.image,
                height: 180.0,
                width: 180.0,
              ),
          ),
          Flexible(
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        character.name,
                        style: const TextStyle(
                            fontSize: 20
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Tooltip(
                            message: character.status,
                            child: Container(
                              width: 12,
                              height: 12,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(999),
                                  color: statusMark[character.status]
                              ),
                            ),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            '${character.status} - ${character.species}',
                            style: const TextStyle(
                              fontSize: 14
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Gender of character:',
                        style: TextStyle(
                            color: Color(0xFF9e9e9e),
                            fontSize: 14
                        ),
                      ),
                      Text(
                        character.gender,
                        style: const TextStyle(
                            fontSize: 16
                        ),

                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Place of birth:',
                        style: TextStyle(
                            color: Color(0xFF9e9e9e),
                            fontSize: 14
                        ),
                      ),
                      Text(
                        character.origin.name,
                        style: const TextStyle(
                            fontSize: 16
                        ),

                      ),
                    ],
                  )
              )
          )
        ],
      ),
    );
  }
}
