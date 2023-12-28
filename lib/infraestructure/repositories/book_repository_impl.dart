import 'package:tolkien/domain/domain.dart';

class BookRepositoryImpl extends BooksRepository{

  final BooksDatasource datasource;

  BookRepositoryImpl({required this.datasource});

  @override
  Future<List<Book>> getBooks({int page = 1}) {
    return datasource.getBooks(page: page);
  }

}