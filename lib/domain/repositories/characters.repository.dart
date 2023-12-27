import 'package:tolkien/domain/entities/character.dart';

abstract class CharactersRepository{
  Future<List<Character>> getCharacters ({int page = 1});
}