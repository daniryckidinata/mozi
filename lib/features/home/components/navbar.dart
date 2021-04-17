import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mozi/constants/cons_icons.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(ConstIcons.iconHome),
            SizedBox(
              height: 6,
            ),
            SvgPicture.asset(ConstIcons.iconCircle),
          ],
        ),
        SvgPicture.asset(ConstIcons.iconSearch),
        SvgPicture.asset(ConstIcons.iconSave),
        SvgPicture.asset(ConstIcons.iconUser),
      ],
    );
  }
}
