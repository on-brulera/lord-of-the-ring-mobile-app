import 'package:tolkien/domain/entities/movie.dart';

abstract class MoviesDatasource{
  Future<List<Movie>> getMovies({int page = 1});
}