import 'package:flutter/material.dart';
import 'package:friends_fraternity_app/core/utills/res/resource.dart';

class RootWidget extends StatelessWidget {
  final String? appbarTitle;
  final Widget? footer;
  final Widget? bottomNavigationBar;
  final Widget? rootWidgetBody;

  const RootWidget({
    Key? key,
    this.appbarTitle,
    this.footer,
    this.bottomNavigationBar,
    this.rootWidgetBody,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorRes.backgroundColor,
      appBar: _makeAppBar(),
      body: _makeRootWidgetBody(),
      bottomNavigationBar: _makeBottomNavigation(),
    );
  }

  PreferredSizeWidget? _makeAppBar() {
    return appbarTitle != null ? AppBar(title: Text(appbarTitle!)) : null;
  }

  Widget? _makeRootWidgetBody() {
    return rootWidgetBody != null ? SafeArea(child: rootWidgetBody!) : null;
  }

  Widget? _makeBottomNavigation() {
    if (bottomNavigationBar != null) {
      return bottomNavigationBar;
    } else if (footer != null) {
      return footer;
    }
    return null;
  }
}
