import 'package:tolkien/domain/entities/character.dart';

abstract class CharactersDatasource{
  Future<List<Character>> getCharacters ({int page = 1});
}