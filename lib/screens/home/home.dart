import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rpg/screens/create/create.dart';
import 'package:rpg/screens/home/character_card.dart';
import 'package:rpg/services/character_store.dart';
import 'package:rpg/shared/styledbutton.dart';
import 'package:rpg/shared/styledtext.dart';
import 'package:rpg/models/character.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    Provider.of<CharacterStore>(context,listen: false).fetchCharactersOnce();

  
    super.initState();
  }

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Styledtitle("Home Page"),
        centerTitle: true,
        
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        
        child: Column(
          children: [
            Expanded(
              child: Consumer<CharacterStore>(

                builder: (context,value,child) {
                  return ListView.builder(itemBuilder: (_,index){
                    
                    return CharacterCard(value.characters[index]);
                  },itemCount: value.characters.length,);
                }
              ),
            ),
            styledbutton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(  builder: (ctx)=> CreateScreen()));
            }, child: Styledheading("Create new"))
          ],
        ),
      ),
    );
  }
}
