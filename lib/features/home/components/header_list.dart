import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mozi/constants/cons_icons.dart';
import 'package:mozi/constants/const_images.dart';
import 'package:mozi/utils/theme.dart';

class HeaderListHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Row(
              children: [
                Container(
                  width: 48,
                  height: 48,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(ConstImages.profile),
                  ),
                ),
                SizedBox(
                  width: 14,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Good Morning,',
                      style: greyPrimaryRegularTextStyle.copyWith(
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Alex Samm',
                      style: whiteTextStyle,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(right: 30),
          width: 18,
          height: 19,
          child: SvgPicture.asset(ConstIcons.iconNotif),
        ),
      ],
    );
  }
}
