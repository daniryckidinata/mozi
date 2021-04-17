import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mozi/constants/cons_icons.dart';

class RatingItem extends StatelessWidget {
  final int index;
  final int rating;

  RatingItem({@required this.index, @required this.rating});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      index <= rating ? ConstIcons.iconStarOranye : ConstIcons.iconStarGrey,
      width: 18,
      height: 18,
    );
  }
}
