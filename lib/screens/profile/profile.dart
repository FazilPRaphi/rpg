import 'package:flutter/material.dart';
import 'package:rpg/screens/profile/skill_list.dart';
import 'package:rpg/screens/profile/stats_table.dart';
import 'package:rpg/shared/styledtext.dart';
import 'package:rpg/models/character.dart';
import 'package:rpg/theme.dart';

class Profile extends StatelessWidget {
  const Profile({super.key, required this.character});
  final Character character;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Styledtitle(character.name)),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.all(20),
                color: AppColors.secondaryAccent.withOpacity(.7),
                
                child: Row(children: [

                  Image.asset(
                  'assets/img/vocations/${character.vocation.image}',
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Styledheading(character.vocation.title),
                      StyledText(character.vocation.description),

                    ],
                  ),
                )
                ],)
                
              ),
            ),
                      const SizedBox(height:10),
                      Center(child: Icon(Icons.code ,color: AppColors.primaryColor),),
                      Padding(padding: EdgeInsets.all(16),
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(16),
                        color: AppColors.secondaryColor.withOpacity(.5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Styledheading('slogan'),
                            StyledText(character.slogan),
                            const SizedBox(height: 10),
                            Styledheading('Weapon of Choice'),
                            StyledText(character.vocation.weapon),
                            const SizedBox(height: 10),
                            Styledheading('Unique Ability'),
                            StyledText(character.vocation.ability),
                            
                          ],
                        )
                      )
                      ),
                      Container(alignment: Alignment.center,
                      child: StatTable(character),),
                      SkillLIst(character),
                      const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
