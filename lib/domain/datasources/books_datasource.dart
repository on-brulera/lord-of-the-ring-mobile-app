
import 'package:tolkien/domain/entities/book.dart';

abstract class BooksDatasource {

  Future<Book> getBooks({int page = 1});

}