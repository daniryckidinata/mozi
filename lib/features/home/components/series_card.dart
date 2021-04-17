import 'package:flutter/material.dart';
import 'package:mozi/features/detail/screens/detail_screen_tv_series.dart';
import 'package:mozi/features/home/components/rating_item.dart';
import 'package:mozi/models/series.dart';
import 'package:mozi/utils/theme.dart';

class SeriesCard extends StatelessWidget {
  final Series series;

  SeriesCard({@required this.series});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreenTvSeries(series: series),
          ),
        );
      },
      child: Row(
        children: [
          Container(
            width: 85,
            height: 85,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                12,
              ),
              child: Image.asset(
                series.urlImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                series.genre,
                style: greyPrimaryRegularTextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                series.name,
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
                    return RatingItem(index: i, rating: series.rating);
                  },
                ).toList(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
