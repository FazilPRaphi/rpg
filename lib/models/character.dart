import 'package:rpg/models/skills.dart';
import 'package:rpg/models/stats.dart';
import 'package:rpg/models/vocation.dart';

class Character with Stats {

  Character({
    required this.name,
    required this.slogan,
    required this.id,
    required this.vocation,
  });
  final Set<Skill> skills= {};
  final Vocation vocation;
  final String name;
  final String slogan;
  final String id;
  bool _isfav = false;


  void toggleFav(){
    _isfav =!_isfav;
  }

  void updateskill(Skill skill){
    skills.clear();
    skills.add(skill);

  }

bool get isfav => _isfav;

}


List<Character> characters = [
  Character(id : "1",name: " Lara",vocation: Vocation.wizard,slogan: "kamupf "),
  Character(id : "2",name: " John",vocation: Vocation.junkie,slogan: "bluj "),
  Character(id : "3",name: " Deno",vocation: Vocation.ninja,slogan: "Go go "),
  Character(id : "4",name: " Linus",vocation: Vocation.raider,slogan: "01" ),


];