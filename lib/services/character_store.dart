import 'package:flutter/material.dart';
import 'package:rpg/models/character.dart';
import 'package:rpg/models/vocation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rpg/services/firestore_services.dart';

class CharacterStore extends ChangeNotifier{

 final List<Character>  _characters = [
 

];
get characters=> _characters;

void addCharacter(Character character){
  _characters.add(character);
  FirestoreService.addCharacter(character);
  notifyListeners();

}

void removeCharacter(Character character) async{
  await FirestoreService.deleteCharacter(character);
  _characters.remove(character);
  notifyListeners();
}
void fetchCharactersOnce() async{
  if(characters.length==0){
    final snapshot=await FirestoreService.getCharactersOnce();

    for( var doc in snapshot.docs){
      _characters.add(doc.data());

    }
    notifyListeners();
  }

}
//save changes 
Future<void> saveCharacter(Character character)async {
  FirestoreService.updateCharacter(character);
  return;
}



}