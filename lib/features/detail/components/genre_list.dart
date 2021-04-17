import 'package:flutter/material.dart';

import 'genre_detail_card.dart';

class GenreList extends StatelessWidget {
  final List genreDetail;

  GenreList({@required this.genreDetail});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: genreDetail.map(
          (genreTopMovie) {
            return GenreDetailCard(genre: genreTopMovie);
          },
        ).toList(),
      ),
    );
  }
}
