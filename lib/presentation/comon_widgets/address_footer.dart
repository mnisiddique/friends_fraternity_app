import 'package:flutter/material.dart';
import 'package:friends_fraternity_app/core/utills/res/resource.dart';

class AddressFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          StringRes.version,
          style: StyleRes.versionTextStyle,
        ),
        Text(
          StringRes.addressLine1,
          style: StyleRes.footerTextStyle,
        ),
        Text(
          StringRes.addressLine2,
          style: StyleRes.footerTextStyle,
        ),
      ],
    );
  }
}
