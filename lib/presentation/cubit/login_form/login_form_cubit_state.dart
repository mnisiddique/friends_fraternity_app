part of 'login_form_cubit.dart';

abstract class LoginFormCubitState extends Equatable {
  const LoginFormCubitState();
  @override
  List<Object> get props => [];
}

class InitialState extends LoginFormCubitState {}

class UserNameState extends LoginFormCubitState {}

class PasswordState extends LoginFormCubitState {}
