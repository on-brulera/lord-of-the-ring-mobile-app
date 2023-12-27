
import 'package:tolkien/domain/entities/book.dart';

abstract class BooksRepository {

  Future<Book> getBooks({int page = 1});

}