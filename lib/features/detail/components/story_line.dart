import 'package:flutter/material.dart';
import 'package:mozi/utils/theme.dart';

class StoryLine extends StatelessWidget {
  final String storyLine;

  StoryLine({@required this.storyLine});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Storyline',
          style: whiteTextStyle.copyWith(
            fontSize: 20,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text.rich(
          TextSpan(
            text: storyLine,
            style: greyPrimaryLightTextStyle,
            children: [
              TextSpan(
                text: 'Read More',
                style: purpleTextStyle,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
