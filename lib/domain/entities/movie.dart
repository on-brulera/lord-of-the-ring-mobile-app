class Movie{
  final String id;
  final String name;
  final int runtimeInMinutes;
  final int budgetInMillions;
  final int boxOfficeRevenueInMillions;
  final int academyAwardNominations;
  final int academyAwardWins;
  final int rottenTomatoesScore;

  Movie({required this.id, required this.name, required this.runtimeInMinutes, required this.budgetInMillions, required this.boxOfficeRevenueInMillions, required this.academyAwardNominations, required this.academyAwardWins, required this.rottenTomatoesScore});
}