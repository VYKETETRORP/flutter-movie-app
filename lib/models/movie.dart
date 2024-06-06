class Movie {
  String title;
  String backDropPath;
  String originalTitle;
  String overview;
  String posterpath;
  String releaseDate;
  String voteAverage;

  Movie({
    required this.title,
    required this.backDropPath,
    required this.originalTitle,
    required this.overview,
    required this.posterpath,
    required this.releaseDate,
    required this.voteAverage,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
        title: json['title'],
        backDropPath: json['back_path'],
        originalTitle: json['original_title'],
        overview: json['overview'],
        posterpath: json['poster_path'],
        releaseDate: json['release_date'],
        voteAverage: json['vote_average']);
  }
}
