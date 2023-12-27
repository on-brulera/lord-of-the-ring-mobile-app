import 'book_bookdb.dart';

class BookDbResponse {
    final List<BookBookDb> books;
    final int total;
    final int limit;
    final int offset;
    final int page;
    final int pages;

    BookDbResponse({
        required this.books,
        required this.total,
        required this.limit,
        required this.offset,
        required this.page,
        required this.pages,
    });

    factory BookDbResponse.fromJson(Map<String, dynamic> json) => BookDbResponse(
        books: List<BookBookDb>.from(json["docs"].map((x) => BookBookDb.fromJson(x))),
        total: json["total"],
        limit: json["limit"],
        offset: json["offset"],
        page: json["page"],
        pages: json["pages"],
    );

    Map<String, dynamic> toJson() => {
        "docs": List<dynamic>.from(books.map((x) => x.toJson())),
        "total": total,
        "limit": limit,
        "offset": offset,
        "page": page,
        "pages": pages,
    };
}
