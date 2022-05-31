import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'login_form_cubit_state.dart';

class LoginFormCubit extends Cubit<LoginFormCubitState> {
  LoginFormCubit() : super(InitialState());
}
