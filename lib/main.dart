import 'package:flutter/material.dart';
import 'package:friends_fraternity_app/core/utills/navigation/route_config.dart';
import 'package:friends_fraternity_app/core/utills/res/resource.dart';

void main() {
  runApp(const FriendsFraternityApp());
}

class FriendsFraternityApp extends StatelessWidget {
  const FriendsFraternityApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: StringRes.title,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteConfig.generateRoute,
      theme: ThemeData(
        primarySwatch: ColorRes.pink,
      ),
    );
  }
}
