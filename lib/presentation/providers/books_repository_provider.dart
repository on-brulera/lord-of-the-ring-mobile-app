
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tolkien/infraestructure/datasource/bookdb_datasource.dart';
import 'package:tolkien/infraestructure/repositories/book_repository_impl.dart';

final bookRepositoryProvider = Provider((ref) {
  return BookRepositoryImpl(datasource: BookDbDatasource());
});