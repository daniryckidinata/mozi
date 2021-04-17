import 'package:flutter/material.dart';
import 'package:mozi/features/detail/screens/detail_screen_movie.dart';
import 'package:mozi/features/home/components/rating_item.dart';
import 'package:mozi/models/movie.dart';
import 'package:mozi/utils/theme.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;

  MovieCard({@required this.movie});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        return Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreenMovie(movie: movie),
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 190,
            height: 250,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                movie.urlImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            movie.name,
            style: whiteTextStyle.copyWith(
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            children: [1, 2, 3, 4, 5].map(
              (i) {
                return RatingItem(index: i, rating: movie.rating);
              },
            ).toList(),
          ),
        ],
      ),
    );
  }
}
