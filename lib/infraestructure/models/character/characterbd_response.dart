import 'package:tolkien/infraestructure/models/character/character_characterbd.dart';

class CharacterDbResponse {
    final List<CharacterCharacterDb> docs;
    final int total;
    final int limit;
    final int offset;
    final int page;
    final int pages;

    CharacterDbResponse({
        required this.docs,
        required this.total,
        required this.limit,
        required this.offset,
        required this.page,
        required this.pages,
    });

    factory CharacterDbResponse.fromJson(Map<String, dynamic> json) => CharacterDbResponse(
        docs: List<CharacterCharacterDb>.from(json["docs"].map((x) => CharacterCharacterDb.fromJson(x))),
        total: json["total"],
        limit: json["limit"],
        offset: json["offset"],
        page: json["page"],
        pages: json["pages"],
    );

    Map<String, dynamic> toJson() => {
        "docs": List<dynamic>.from(docs.map((x) => x.toJson())),
        "total": total,
        "limit": limit,
        "offset": offset,
        "page": page,
        "pages": pages,
    };
}
