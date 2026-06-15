import 'package:flutter/material.dart';
import 'package:rpg/theme.dart';

class charactercard extends StatelessWidget {
  const charactercard(this.characters,{super.key});

  final String characters;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical :8),
        child: Row(
          children: [
          Text(characters),
          Expanded(
            child: SizedBox(),
          ),
          IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward,color: AppColors.textColor,))
          ]
        ),
      )
      
      
      
    );
  }
}