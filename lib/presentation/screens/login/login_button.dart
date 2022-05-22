import 'package:flutter/material.dart';
import 'package:friends_fraternity_app/core/utills/res/resource.dart';

class LoginButton extends StatelessWidget {
  final Function() onTap;
  final double height;

  const LoginButton({Key? key, required this.onTap, required this.height})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: ButtonStyle(
          //textStyle: MaterialStateProperty.all(StyleRes.textStyleLogin),
          minimumSize: MaterialStateProperty.all(Size.fromHeight(height)),
          backgroundColor:
              MaterialStateProperty.all(ColorRes.primaryMaterialColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(height / 2),
            ),
          )),
      child: Text(
        StringRes.labelLogin,
        style: StyleRes.textStyleLogin,
      ),
    );
  }
}
