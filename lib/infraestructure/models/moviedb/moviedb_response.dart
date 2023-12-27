import 'package:tolkien/infraestructure/models/moviedb/movie_moviedb.dart';

class MovieDbResponse {
    final List<MovieMovieDb> docs;
    final int total;
    final int limit;
    final int offset;
    final int page;
    final int pages;

    MovieDbResponse({
        required this.docs,
        required this.total,
        required this.limit,
        required this.offset,
        required this.page,
        required this.pages,
    });

    factory MovieDbResponse.fromJson(Map<String, dynamic> json) => MovieDbResponse(
        docs: List<MovieMovieDb>.from(json["docs"].map((x) => MovieMovieDb.fromJson(x))),
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

