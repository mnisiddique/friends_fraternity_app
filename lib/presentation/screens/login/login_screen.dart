import 'package:flutter/material.dart';
import 'package:friends_fraternity_app/presentation/widget_exporter.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RootWidget(
      rootWidgetBody: _makeScreenContent(),
      footer: AddressFooter(),
    );
  }

  Widget _makeScreenContent() {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Header(),
          SizedBox(height: 96.0),
          LoginForm(),
        ],
      ),
    );
  }
}
