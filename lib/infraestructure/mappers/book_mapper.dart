import 'package:tolkien/domain/entities/book.dart';
import 'package:tolkien/infraestructure/models/bookdb/book_bookdb.dart';

class BookMapper{
  
  static Book bookDbToEntity(BookBookDb bookDb) => Book(
    id: bookDb.id, name: bookDb.name);

}