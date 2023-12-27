class CharacterCharacterDb {
    final String id;
    final String height;
    final String race;
    final String? gender;
    final String birth;
    final String spouse;
    final String death;
    final String realm;
    final String hair;
    final String name;
    final String? wikiUrl;

    CharacterCharacterDb({
        required this.id,
        required this.height,
        required this.race,
        this.gender,
        required this.birth,
        required this.spouse,
        required this.death,
        required this.realm,
        required this.hair,
        required this.name,
        this.wikiUrl,
    });

    factory CharacterCharacterDb.fromJson(Map<String, dynamic> json) => CharacterCharacterDb(
        id: json["_id"],
        height: json["height"],
        race: json["race"],
        gender: json["gender"]!,
        birth: json["birth"],
        spouse: json["spouse"],
        death: json["death"],
        realm: json["realm"],
        hair: json["hair"],
        name: json["name"],
        wikiUrl: json["wikiUrl"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "height": height,
        "race": race,
        "gender": gender,
        "birth": birth,
        "spouse": spouse,
        "death": death,
        "realm": realm,
        "hair": hair,
        "name": name,
        "wikiUrl": wikiUrl,
    };
}