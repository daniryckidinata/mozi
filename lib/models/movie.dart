import 'package:flutter/foundation.dart';

class Movie {
  int id, rating;
  String name, urlImage, director, story, genre;
  List genreDetail;

  Movie({
    @required this.id,
    @required this.rating,
    @required this.genre,
    @required this.genreDetail,
    @required this.name,
    @required this.urlImage,
    @required this.director,
    @required this.story,
  });

  Movie.fromData(dataMovie) {
    id = dataMovie['id'];
    rating = dataMovie['rating'];
    genre = dataMovie['genre'];
    genreDetail = dataMovie['genreDetail'];
    name = dataMovie['name'];
    urlImage = dataMovie['urlImage'];
    director = dataMovie['director'];
    story = dataMovie['story'];
  }
}
