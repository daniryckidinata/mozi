import 'package:flutter/material.dart';
import 'package:mozi/features/home/components/header_list.dart';
import 'package:mozi/features/home/components/navbar.dart';
import 'package:mozi/features/home/components/top_movie_list.dart';
import 'package:mozi/features/home/components/tv_series_list.dart';
import 'package:mozi/utils/theme.dart';

class HomeScreen extends StatelessWidget {
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
          ),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeaderListHome(),
                  SizedBox(height: 30),
                  TopMovieList(),
                  SizedBox(height: 30),
                  TvSeriesList(),
                  SizedBox(height: 60),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        width: MediaQuery.of(context).size.width - (2 * 30),
        height: 40,
        margin: EdgeInsets.symmetric(horizontal: 30),
        color: backgroundNavbarColor,
        child: Navbar(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
