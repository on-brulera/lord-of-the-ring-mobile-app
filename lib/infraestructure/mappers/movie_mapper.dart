import 'package:tolkien/domain/domain.dart';
import 'package:tolkien/infraestructure/models/moviedb/movie_moviedb.dart';

class MovieMapper{

  static Movie movieDbToEntity(MovieMovieDb movieDb) => Movie(
    id: movieDb.id, 
    name: movieDb.name, 
    runtimeInMinutes: movieDb.runtimeInMinutes, 
    budgetInMillions: movieDb.budgetInMillions, 
    boxOfficeRevenueInMillions: movieDb.boxOfficeRevenueInMillions, 
    academyAwardNominations: movieDb.academyAwardNominations, 
    academyAwardWins: movieDb.academyAwardWins, 
    rottenTomatoesScore: movieDb.rottenTomatoesScore);
}