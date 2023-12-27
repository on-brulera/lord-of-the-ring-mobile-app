import 'package:tolkien/domain/entities/quotes.dart';

abstract class QuotesRepository{

  Future<List<Quote>> getQuotes({int page = 1});

}