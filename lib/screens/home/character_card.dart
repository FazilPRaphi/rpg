import 'package:flutter/material.dart';
import 'package:rpg/models/character.dart';
import 'package:rpg/shared/styledtext.dart';
import 'package:rpg/theme.dart';

class CharacterCard extends StatelessWidget {
  const CharacterCard(this.characters, {super.key});

  final Character characters;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          children: [
            // fixed-size image with placeholder on load error
            Image.asset(
              'assets/img/vocations/${characters.vocation.image}',
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 16),

            // let the text column take remaining space and wrap
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Styledheading(characters.name),
                  const SizedBox(height: 4),
                  StyledText(characters.vocation.title),
                ],
              ),
            ),

            IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_forward, color: AppColors.textColor),
            ),
          ],
        ),
      ),
    );
  }
}
