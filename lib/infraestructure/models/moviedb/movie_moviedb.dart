class MovieMovieDb {
    final String id;
    final String name;
    final int runtimeInMinutes;
    final int budgetInMillions;
    final double boxOfficeRevenueInMillions;
    final int academyAwardNominations;
    final int academyAwardWins;
    final double rottenTomatoesScore;

    MovieMovieDb({
        required this.id,
        required this.name,
        required this.runtimeInMinutes,
        required this.budgetInMillions,
        required this.boxOfficeRevenueInMillions,
        required this.academyAwardNominations,
        required this.academyAwardWins,
        required this.rottenTomatoesScore,
    });

    factory MovieMovieDb.fromJson(Map<String, dynamic> json) => MovieMovieDb(
        id: json["_id"],
        name: json["name"],
        runtimeInMinutes: json["runtimeInMinutes"],
        budgetInMillions: json["budgetInMillions"],
        boxOfficeRevenueInMillions: json["boxOfficeRevenueInMillions"]?.toDouble(),
        academyAwardNominations: json["academyAwardNominations"],
        academyAwardWins: json["academyAwardWins"],
        rottenTomatoesScore: json["rottenTomatoesScore"]?.toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "runtimeInMinutes": runtimeInMinutes,
        "budgetInMillions": budgetInMillions,
        "boxOfficeRevenueInMillions": boxOfficeRevenueInMillions,
        "academyAwardNominations": academyAwardNominations,
        "academyAwardWins": academyAwardWins,
        "rottenTomatoesScore": rottenTomatoesScore,
    };
}