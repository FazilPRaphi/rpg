import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rpg/models/character.dart';
import 'package:rpg/models/vocation.dart';
import 'package:rpg/screens/create/vocation_card.dart';
import 'package:rpg/screens/home/home.dart';
import 'package:rpg/shared/styledtext.dart';
import 'package:rpg/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rpg/shared/styledbutton.dart';
import 'package:uuid/uuid.dart';
import 'package:rpg/services/character_store.dart';

var uuid= const Uuid();
class CreateScreen extends StatefulWidget {
  const CreateScreen({super.key});

  @override
  State<CreateScreen> createState() => _CreateState();
}

class _CreateState extends State<CreateScreen> {

  final _nameController =TextEditingController();
  final _sloganController =TextEditingController();

  @override
  void dispose() {
    
    _nameController.dispose();
    _sloganController.dispose();
    super.dispose();
  }
  //submit handle
  void handlesubmit(){
    if(_nameController.text.trim().isEmpty){
      showDialog(context:context,builder:(ctx){
        return AlertDialog(
          
          title: StyledText("Missing Name"),
          content: StyledText("Every character needs a name"),
          actions: [
            styledbutton(onPressed: (){
              Navigator.pop(context);
            }, child: StyledText("Close")),
          ],
            actionsAlignment: MainAxisAlignment.center,
        );
      },
      );
     return;
    }
    if(_sloganController.text.trim().isEmpty){
        showDialog(context:context,builder:(ctx){
        return AlertDialog(

          title: StyledText("Missing Slogan"),
          content: StyledText("Every character needs a slogan"),
          actions: [
            styledbutton(onPressed: (){
              Navigator.pop(context);
            }, child: StyledText("close")),
          ],
            actionsAlignment: MainAxisAlignment.center,
        );
      },
      );

      return; 
    }

    
    Provider.of<CharacterStore>(context,listen: false)
     .addCharacter(Character(name: _nameController.text.trim(),
    slogan: _sloganController.text.trim(),
    vocation: selectedVocation,
    id: uuid.v4(),




    ),);

    Navigator.push(context,MaterialPageRoute(builder: (ctx)=> Home()));
  }


Vocation  selectedVocation = Vocation.junkie;

void updateVocation(Vocation vocation){
  setState(() {
    selectedVocation=vocation;
  });
}
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Styledtitle("Character Creation"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              
                
                  Center(child: Icon(Icons.code, color: AppColors.primaryColor)),
                  Center(child: Styledheading("Welcome New Player")),
                  Center(child: StyledText("Create Your Name and Character")),
                  const SizedBox(height: 30),
                
                  TextField(
                    style: GoogleFonts.kanit(
                      textStyle: Theme.of(context).textTheme.bodyMedium,
                    ),
                    controller: _nameController,
                    cursorColor: AppColors.textColor,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      prefixIconColor: Colors.grey[500],
                      label: StyledText("Character Name"),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                
                    controller: _sloganController,
                    style: GoogleFonts.kanit(
                      textStyle: Theme.of(context).textTheme.bodyMedium,
                    ),
                    cursorColor: AppColors.textColor,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.chat),
                      prefixIconColor: Colors.grey[500],
                      label: StyledText('Character Slogan'),
                    ),
                  ),
                  SizedBox(height: 30,),
                //seclect vocation tiitle
                        Center(child: Icon(Icons.code, color: AppColors.primaryColor)),
                  Center(child: Styledheading("Choose a vocation")),
                  Center(child: StyledText("This will determine your available skills")),
                  
                SizedBox(height: 30,),
                VocationCard(
                  selected: selectedVocation == Vocation.junkie,
                  onTap:updateVocation,
                  vocation: Vocation.junkie),
                 VocationCard(
                   selected: selectedVocation == Vocation.ninja,
                   onTap:updateVocation,
                   vocation: Vocation.ninja),
                VocationCard(
                   selected: selectedVocation == Vocation.raider,
                   onTap:updateVocation,
                   vocation: Vocation.raider),
                 VocationCard(
                   selected: selectedVocation == Vocation.wizard,
                   onTap:updateVocation,
                   vocation: Vocation.wizard),
                  SizedBox(height: 30,),

                  Center(child: Icon(Icons.code, color: AppColors.primaryColor)),
                  Center(child: Styledheading("Good Luck")),
                  Center(child: StyledText("Enjoy the journey...")),
                  const SizedBox(height: 30),
                  styledbutton(onPressed: handlesubmit,
                   child: Styledheading("Create character"),),
                  SizedBox(height: 20),
                ],
              
            
          ),
        ),
      ),
    );
  }
}
