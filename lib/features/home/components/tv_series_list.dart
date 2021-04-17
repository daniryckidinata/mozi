import 'package:flutter/material.dart';
import 'package:mozi/features/home/components/series_card.dart';
import 'package:mozi/models/series.dart';
import 'package:mozi/utils/theme.dart';

import '../../../database/data.dart';

class TvSeriesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Tv Series',
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
        SizedBox(height: 12),
        Column(
          children: dataTvSeries.map(
            (tvSeries) {
              return Container(
                margin: EdgeInsets.only(bottom: 18),
                child: SeriesCard(
                  series: Series.fromData(tvSeries),
                ),
              );
            },
          ).toList(),
        ),
      ],
    );
  }
}
