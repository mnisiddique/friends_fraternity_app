import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friends_fraternity_app/core/utills/res/resource.dart';
import 'package:friends_fraternity_app/presentation/export_cubit.dart';
import 'package:friends_fraternity_app/presentation/export_widget.dart';

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
          _loginButton(),
          // LoginButton(
          //     onTap: BlocProvider.of<LoginFormCubit>(context).doLogin,
          //     height: 42.0),
        ],
      ),
    );
  }

  Widget _userIdField() {
    return BlocSelector<LoginFormCubit, LoginFormState, String>(
      selector: (state) {
        print(state.runtimeType);
        return state.userId;
      },
      builder: (context, userName) {
        print("Building userid");
        return UserIdField(
          onChange: BlocProvider.of<LoginFormCubit>(context).onUserIdChange,
          label: StringRes.labelMobileNo,
          hintText: StringRes.labelMobileNoHint,
          prefixIcon: Icons.phone_android,
        );
      },
    );
  }

  Widget _passwordField() {
    return BlocSelector<LoginFormCubit, LoginFormState, String>(
      selector: (state) {
        print(state.runtimeType);
        return state.password;
      },
      builder: (context, pwd) {
        print("Building pwd");
        return UserIdField(
          onChange: BlocProvider.of<LoginFormCubit>(context).onPwdChange,
          label: StringRes.labelPassword,
          hintText: StringRes.labelPassword,
          prefixIcon: Icons.lock,
        );
      },
    );
  }

  Widget _loginButton() {
    return BlocSelector<LoginFormCubit, LoginFormState, bool>(
        selector: (state) => state.formStatus,
        builder: (context, status) {
          return Visibility(
            visible: status,
            child: LoginButton(
              onTap: BlocProvider.of<LoginFormCubit>(context).doLogin,
              height: 42.0,
            ),
          );
        });
  }
}
