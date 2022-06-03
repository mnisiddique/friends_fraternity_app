import 'package:flutter/material.dart';
import 'package:friends_fraternity_app/core/utills/res/resource.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          StringRes.title,
          style: StyleRes.headerTextStyle,
        ),
        Text(
          StringRes.moto,
          style: StyleRes.headerSubTitleTextStyle,
        ),
      ],
    );
  }
}
