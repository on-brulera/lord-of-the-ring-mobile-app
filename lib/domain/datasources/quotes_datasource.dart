import 'package:tolkien/domain/entities/quotes.dart';

abstract class QuotesDatasource{

  Future<List<Quote>> getQuotes({int page = 1});

}