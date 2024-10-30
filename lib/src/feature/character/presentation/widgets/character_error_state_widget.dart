import 'package:flutter/material.dart';
import 'package:flutter_project/core/design/constants/colors.dart';
import 'package:flutter_project/core/design/constants/images.dart';

class CharacterErrorStateWidget extends StatelessWidget {
  const CharacterErrorStateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFF212b4c),
        image: DecorationImage(
          image: AssetImage('assets/images/background_image.jpg'),
          fit: BoxFit.cover
        )
      ),
      padding: const EdgeInsets.symmetric(horizontal: 25),
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          notFoundData,
          const Text(
            'Something went wrong',
            style: TextStyle(
              fontSize: 32
            )
          ),
          const Text(
            'Please, try reload application',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.normal,
              color: subColor
            ),
          ),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: (){
              
            }, 
            child: const Text('Reload')
          )
        ],
      )
      );
  }
}