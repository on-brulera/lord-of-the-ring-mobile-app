import 'package:tolkien/domain/domain.dart';
import 'package:tolkien/infraestructure/models/character/character_characterbd.dart';

class CharacterMapper{

  static Character characterDbToEntity(CharacterCharacterDb characterdb) => Character(
    id: characterdb.id, 
    height: characterdb.height, 
    race: characterdb.race, 
    gender: characterdb.gender ?? 'No especificado', 
    birth: characterdb.birth, 
    spouse: characterdb.spouse, 
    death: characterdb.death, 
    realm: characterdb.realm, 
    hair: characterdb.hair, 
    name: characterdb.name, 
    wikiUrl: characterdb.wikiUrl ?? 'Sin descripción en el Fandom');

}