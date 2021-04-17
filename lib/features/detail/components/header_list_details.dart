import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mozi/constants/cons_icons.dart';
import 'package:mozi/utils/theme.dart';

class HeaderListDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: SvgPicture.asset(
            ConstIcons.btnBack,
          ),
        ),
        Text(
          'Details Movie',
          style: whiteTextStyle.copyWith(
            fontSize: 18,
          ),
        ),
        SvgPicture.asset(
          ConstIcons.iconBookmark,
        ),
      ],
    );
  }
}
