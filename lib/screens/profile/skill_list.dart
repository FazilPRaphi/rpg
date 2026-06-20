import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rpg/models/character.dart';
import 'package:rpg/models/skills.dart';
import 'package:rpg/services/character_store.dart';
import 'package:rpg/shared/styledbutton.dart';
import 'package:rpg/shared/styledtext.dart';
import 'package:rpg/theme.dart';
class SkillLIst extends StatefulWidget {
  const SkillLIst(this.character, {super.key});

  final Character character;

  @override
  State<SkillLIst> createState() => _SkillLIstState();
}

class _SkillLIstState extends State<SkillLIst> {
late List<Skill> availableSkills ;
late Skill selectedSkill;

  @override

  void initState()
{

  availableSkills =allSkill.where((skill) {
    return skill.vocation == widget.character.vocation;
  }).toList();

  if(widget.character.skills.isEmpty){
    selectedSkill= availableSkills[0];

  }
  if(widget.character.skills.isNotEmpty){
    selectedSkill=widget.character.skills.first; 
  }
  super.initState();
}  

Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        padding: const EdgeInsets.all(16),
        color: AppColors.secondaryColor,
        child: Column(
          children:[
            const Styledheading('Choose an active skill'),
            const StyledText('Skills are unique to your vocation'),
            const SizedBox(height: 20),

            Row(
              children: 
                availableSkills.map((skill){
                  return Container(
                    color: skill==selectedSkill ? AppColors.highlightColor : Colors.transparent,
                      margin: const EdgeInsets.all(5),
                      padding : const EdgeInsets.all(2),

                      child:GestureDetector(
                        onTap: (){
                          setState((){
                            widget.character.updateskill(skill);
                            selectedSkill =skill;
                          });
                        },
 child: Image.asset('assets/img/skills/${skill.image}',width:70,height:70,)
                  )
                      );
                     
                  
                }).toList(),

              
            ),
            const SizedBox(height: 20),
            StyledText(selectedSkill.name),
            styledbutton(onPressed: (){
              Provider.of<CharacterStore>(context,listen: false).saveCharacter(widget.character);

              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: const Styledheading('Character was saved'),showCloseIcon: true,duration: Duration(seconds: 2),backgroundColor: AppColors.secondaryColor,
              ),);
              
            }, child: Styledheading('Save')),
            const SizedBox(height:20),
          ]
        )
      )

    );
  }
}