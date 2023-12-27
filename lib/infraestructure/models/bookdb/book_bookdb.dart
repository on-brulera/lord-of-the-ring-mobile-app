class BookBookDb {
    final String id;
    final String name;

    BookBookDb({
        required this.id,
        required this.name,
    });

    factory BookBookDb.fromJson(Map<String, dynamic> json) => BookBookDb(
        id: json["_id"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
    };
}