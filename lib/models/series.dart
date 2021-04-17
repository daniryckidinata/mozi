import 'package:flutter/foundation.dart';

class Series {
  int id, rating;
  String name, urlImage, director, story, genre;
  List genreDetail;

  Series({
    @required this.id,
    @required this.rating,
    @required this.genre,
    @required this.genreDetail,
    @required this.name,
    @required this.urlImage,
    @required this.director,
    @required this.story,
  });

  Series.fromData(dataTvSeries) {
    id = dataTvSeries['id'];
    rating = dataTvSeries['rating'];
    genre = dataTvSeries['genre'];
    genreDetail = dataTvSeries['genreDetail'];
    name = dataTvSeries['name'];
    urlImage = dataTvSeries['urlImage'];
    director = dataTvSeries['director'];
    story = dataTvSeries['story'];
  }
}
