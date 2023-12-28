import 'package:dio/dio.dart';
import 'package:tolkien/config/constant/environment.dart';
import 'package:tolkien/domain/datasources/books_datasource.dart';
import 'package:tolkien/domain/entities/book.dart';
import 'package:tolkien/infraestructure/mappers/book_mapper.dart';
import 'package:tolkien/infraestructure/models/bookdb/bookdb_response.dart';

class BookDbDatasource extends BooksDatasource{

  final dio = Dio(
    BaseOptions(
      baseUrl: Environment.baseUrl, 
      headers: {"Content-Type": "application/json",
          "Authorization": "Bearer ${Environment.apiToken}",}           
    ),    
  );

  @override
  Future<List<Book>> getBooks({int page = 1}) async{
     final response = await dio.get('/book');
     final bookResponse = BookDbResponse.fromJson(response.data);
     final List<Book> books = bookResponse.books.map((bookDb) => BookMapper.bookDbToEntity(bookDb)).toList();
     return books;
  }

}