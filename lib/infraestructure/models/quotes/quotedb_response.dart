import 'package:tolkien/infraestructure/models/quotes/quote_quotebd.dart';

class QuoteDbResponse {
    final List<QuoteQuoteDb> docs;
    final int total;
    final int limit;
    final int offset;
    final int page;
    final int pages;

    QuoteDbResponse({
        required this.docs,
        required this.total,
        required this.limit,
        required this.offset,
        required this.page,
        required this.pages,
    });

    factory QuoteDbResponse.fromJson(Map<String, dynamic> json) => QuoteDbResponse(
        docs: List<QuoteQuoteDb>.from(json["docs"].map((x) => QuoteQuoteDb.fromJson(x))),
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

