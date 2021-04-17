import 'package:flutter/material.dart';
import 'package:mozi/features/detail/components/button_details.dart';
import 'package:mozi/features/detail/components/genre_list.dart';
import 'package:mozi/features/detail/components/header_list_details.dart';
import 'package:mozi/features/detail/components/image_movie.dart';
import 'package:mozi/features/detail/components/story_line.dart';
import 'package:mozi/features/detail/components/title_movie.dart';
import 'package:mozi/models/movie.dart';
import 'package:mozi/utils/theme.dart';

class DetailScreenMovie extends StatelessWidget {
  final Movie movie;

  DetailScreenMovie({@required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.only(
            top: 30,
            left: 30,
            right: 30,
          ),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeaderListDetails(),
                  SizedBox(
                    height: 30,
                  ),
                  ImageMovie(
                    image: movie.urlImage,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  TitleMovie(
                    name: movie.name,
                    director: movie.director,
                    rating: movie.rating,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  GenreList(
                    genreDetail: movie.genreDetail,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  StoryLine(
                    storyLine: movie.story,
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  ButtonDetails(),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
