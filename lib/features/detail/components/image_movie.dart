import 'package:flutter/material.dart';

class ImageMovie extends StatelessWidget {
  final String image;

  ImageMovie({@required this.image});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          image,
          width: MediaQuery.of(context).size.width,
          height: 370,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
