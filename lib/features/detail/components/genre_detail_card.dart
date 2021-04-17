import 'package:flutter/material.dart';
import 'package:mozi/utils/theme.dart';

class GenreDetailCard extends StatelessWidget {
  final String genre;

  GenreDetailCard({@required this.genre});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
      alignment: Alignment.center,
      height: 30,
      margin: EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: blackAccentColor,
      ),
      child: Text(
        genre,
        style: greyAccentRegularTextStyle,
      ),
    );
  }
}
