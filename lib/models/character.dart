import 'package:cloud_firestore/cloud_firestore.dart';
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

Map<String,dynamic> toFirestore(){
  return {
    'name': name,
    'slogan': slogan,
    'isFav': _isfav,
    'vocation': vocation.toString(),
    'skills' : skills.map((s)=>s.id).toList(),
    'stats' :StatAsMap,
    'points': points,
  };


}
factory Character.fromFirestore(DocumentSnapshot<Map<String,dynamic>> snapshot,
 SnapshotOptions? options
){
  final data= snapshot.data()!;

  Character character = Character(name: data['name'], slogan: data['slogan'], id: snapshot.id, 
  vocation: Vocation.values.firstWhere((v)=>v.toString()==data['vocation']));


  for (String id in data['skills'] ){
    Skill skill =allSkill.firstWhere((element)=>element.id==id);
    character.updateskill(skill);
  }
  if(data['isFav']==true){
    character.toggleFav();
  }

character.setStats(points: data['points'], stats: data['stats']);



  return character;
}


}

List<Character> characters = [
  Character(id : "1",name: " Lara",vocation: Vocation.wizard,slogan: "kamupf "),
  Character(id : "2",name: " John",vocation: Vocation.junkie,slogan: "bluj "),
  Character(id : "3",name: " Deno",vocation: Vocation.ninja,slogan: "Go go "),
  Character(id : "4",name: " Linus",vocation: Vocation.raider,slogan: "01" ),


];