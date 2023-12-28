
import 'package:tolkien/domain/entities/book.dart';

abstract class BooksRepository {

  Future<List<Book>> getBooks({int page = 1});

}