import 'package:flutter/material.dart';
import 'package:rpg/screens/home/character_card.dart';
import 'package:rpg/shared/styledbutton.dart';
import 'package:rpg/shared/styledtext.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<String> characters = ["Character 1", "Character 2", "Character 3"];
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
                
                return charactercard(characters[index]);
              },itemCount: characters.length,),
            ),
            styledbutton(onPressed: (){}, child: Styledheading("Create new"))
          ],
        ),
      ),
    );
  }
}
