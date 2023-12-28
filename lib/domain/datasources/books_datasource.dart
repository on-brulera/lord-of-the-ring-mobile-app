
import 'package:tolkien/domain/entities/book.dart';

abstract class BooksDatasource {

  Future<List<Book>> getBooks({int page = 1});

}