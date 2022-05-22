import 'package:flutter/material.dart';
import 'package:friends_fraternity_app/core/utills/res/resource.dart';
import 'package:friends_fraternity_app/presentation/widget_exporter.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _userIdField(),
          SizedBox(height: 24.0),
          _passwordField(),
          SizedBox(height: 20.0),
          LoginButton(onTap: () {}, height: 42.0),
        ],
      ),
    );
  }

  Widget _userIdField() {
    return UserIdField(
      label: StringRes.labelMobileNo,
      hintText: StringRes.labelMobileNoHint,
      prefixIcon: Icons.phone_android,
    );
  }

  Widget _passwordField() {
    return UserIdField(
      label: StringRes.labelPassword,
      hintText: StringRes.labelPassword,
      prefixIcon: Icons.lock,
    );
  }
}
