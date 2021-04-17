import 'package:flutter/material.dart';
import 'package:mozi/utils/theme.dart';

class ButtonDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment: Alignment.center,
      width: MediaQuery.of(context).size.width - (2 * 30),
      height: 56,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: purpleColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            )),
        onPressed: () {
          return print('you click this button!');
        },
        child: Text(
          'Watch Movie',
          style: whiteTextStyle.copyWith(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
