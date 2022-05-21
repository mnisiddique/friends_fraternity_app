import 'package:flutter/material.dart';
import 'package:friends_fraternity_app/presentation/widget_exporter.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RootWidget(
      footer: AddressFooter(),
    );
  }
}
