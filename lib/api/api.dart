import 'package:movie_app_assignment/contrants.dart';
import 'package:movie_app_assignment/models/movie.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class Api {
  static const _trendingUrl='https://api.themoviedb.org/3/trending/movie/day?api_key=${Contrants.apiKey}';


      Future<List<Movie>> getTrendingMovies() async {
        final response = await http.get(Uri.parse(_trendingUrl));
        if (response.statusCode==200){
          final decodedData = json.decode(response.body)['result'] as List;
          print(decodedData);
            return decodedData.map((movie) => Movie.fromJson(movie)).toList();
        }else{
          throw Exception('Something happended');
        }

      }
 }
