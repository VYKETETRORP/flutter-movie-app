class Movie {
  final String posterPath;
  final String title;
  final String backDropPath;
  final String originalTitle;
  final String overview;
  final String releaseDate;
  final double voteAverage;

  Movie({
    required this.posterPath,
    required this.title,
    required this.backDropPath,
    required this.originalTitle,
    required this.overview,
    required this.releaseDate,
    required this.voteAverage,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      posterPath: json['poster_path'],
      title: json['title'],
      backDropPath: json['backdrop_path'],
      originalTitle: json['original_title'],
      overview: json['overview'],
      releaseDate: json['release_date'],
      voteAverage: json['vote_average'],
    );
  }
}
