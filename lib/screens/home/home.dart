import 'package:flutter/material.dart';
import 'package:rpg/screens/home/character_card.dart';
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
              child: ListView.builder(itemBuilder: (_,index){
                
                return CharacterCard(characters[index]);
              },itemCount: characters.length,),
            ),
            styledbutton(onPressed: (){}, child: Styledheading("Create new"))
          ],
        ),
      ),
    );
  }
}
