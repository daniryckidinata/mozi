import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mozi/constants/cons_icons.dart';
import 'package:mozi/utils/theme.dart';

class TitleMovie extends StatelessWidget {
  final String name, director;
  final int rating;

  TitleMovie({
    @required this.name,
    @required this.director,
    @required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: whiteTextStyle.copyWith(
            fontSize: 20,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Text(
              'Director: $director',
              style: greyAccentRegularTextStyle,
            ),
            SizedBox(
              width: 6,
            ),
            Text(
              '|',
              style: greyAccentRegularTextStyle,
            ),
            SizedBox(
              width: 6,
            ),
            SvgPicture.asset(ConstIcons.iconStarOranye),
            SizedBox(
              width: 2,
            ),
            Text(
              '$rating',
              style: greyAccentRegularTextStyle,
            ),
          ],
        ),
      ],
    );
  }
}
