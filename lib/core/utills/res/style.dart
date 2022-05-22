import 'package:flutter/material.dart';
import 'package:friends_fraternity_app/core/utills/res/resource.dart';

class StyleRes {
  StyleRes._init();
  static const TextStyle footerTextStyle = const TextStyle(
    fontSize: 12.0,
    color: ColorRes.primaryMaterialColor,
    fontWeight: FontWeight.w200,
  );

  static const TextStyle versionTextStyle = const TextStyle(
    fontSize: 12.0,
    color: ColorRes.primaryMaterialColor,
    fontWeight: FontWeight.w300,
  );
  static const TextStyle headerTextStyle = const TextStyle(
    fontSize: 20.0,
    color: ColorRes.primaryMaterialColor,
    fontWeight: FontWeight.w700,
  );
  static const TextStyle headerSubTitleTextStyle = const TextStyle(
    fontSize: 16.0,
    color: ColorRes.primaryMaterialColor,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle labelStyleUserId = const TextStyle(
    fontSize: 13.0,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle textStyleTextField = const TextStyle(
    fontSize: 16.0,
    color: ColorRes.textColor,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle textStyleLogin = const TextStyle(
    fontSize: 14.0,
    color: Colors.white,
    fontWeight: FontWeight.w500,
  );
}
