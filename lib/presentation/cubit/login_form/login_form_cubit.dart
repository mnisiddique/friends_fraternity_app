import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'login_form_cubit_state.dart';

class LoginFormCubit extends Cubit<LoginFormState> {
  LoginFormCubit() : super(LoginFormState());

  void doLogin() {
    //emit(UserNameState("UserNam"));
  }

  void onUserIdChange(String value) {
    if (value.length > 4) {
      emit(
          state.copyWith(userId: value, formStatus: state.password.isNotEmpty));
    } else {
      emit(state.copyWith(userId: "", formStatus: false));
    }
  }

  void onPwdChange(String value) {
    print("pwd: ${value.length}");
    if (value.length > 5) {
      emit(
        state.copyWith(
          password: value,
          formStatus: value.isNotEmpty && state.userId.isNotEmpty,
        ),
      );
    } else {
      emit(
        state.copyWith(
          password: "",
          formStatus: false,
        ),
      );
    }
  }
}
