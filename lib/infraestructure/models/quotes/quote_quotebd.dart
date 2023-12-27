class QuoteQuoteDb {
    final String id;
    final String dialog;
    final String movie;
    final String character;
    final String docId;

    QuoteQuoteDb({
        required this.id,
        required this.dialog,
        required this.movie,
        required this.character,
        required this.docId,
    });

    factory QuoteQuoteDb.fromJson(Map<String, dynamic> json) => QuoteQuoteDb(
        id: json["_id"],
        dialog: json["dialog"],
        movie: json["movie"]!,
        character: json["character"],
        docId: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "dialog": dialog,
        "movie": movie,
        "character": character,
        "id": docId,
    };
}
