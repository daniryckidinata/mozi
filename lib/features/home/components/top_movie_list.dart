import 'package:flutter/material.dart';
import 'package:mozi/database/data.dart';
import 'package:mozi/models/movie.dart';
import 'package:mozi/utils/theme.dart';

import 'movie_card.dart';

class TopMovieList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Top Movie',
              style: whiteTextStyle.copyWith(
                fontSize: 20,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                right: 30,
              ),
              child: Text(
                'See more',
                style: greyPrimaryLightTextStyle,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 12,
        ),
        Container(
          height: 310,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: dataMovie.map(
              (movie) {
                return Container(
                  margin: EdgeInsets.only(right: 30),
                  child: MovieCard(
                    movie: Movie.fromData(movie),
                  ),
                );
              },
            ).toList(),
          ),
        ),
      ],
    );
  }
}
