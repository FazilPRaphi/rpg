import 'package:flutter/material.dart';
import 'package:rpg/models/character.dart';
import 'package:rpg/models/vocation.dart';

class CharacterStore extends ChangeNotifier{

 final List<Character>  _characters = [
  Character(id : "1",name: " Lara",vocation: Vocation.wizard,slogan: "kamupf "),
  Character(id : "2",name: " John",vocation: Vocation.junkie,slogan: "bluj "),
  Character(id : "3",name: " Deno",vocation: Vocation.ninja,slogan: "Go go "),
  Character(id : "4",name: " Linus",vocation: Vocation.raider,slogan: "01" ),


];
get characters=> _characters;

void addCharacter(Character character){
  _characters.add(character);
  notifyListeners();
}



}