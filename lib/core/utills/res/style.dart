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
}
