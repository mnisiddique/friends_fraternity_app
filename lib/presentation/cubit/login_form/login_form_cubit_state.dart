part of 'login_form_cubit.dart';

class LoginFormState extends Equatable {
  final String userId;
  final String password;
  final bool formStatus;

  LoginFormState({
    this.userId = "",
    this.password = "",
    this.formStatus = false,
  });

  LoginFormState copyWith({
    String? userId,
    String? password,
    bool? formStatus,
  }) {
    return LoginFormState(
      userId: userId ?? this.userId,
      password: password ?? this.password,
      formStatus: formStatus ?? this.formStatus,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [userId, password, formStatus];
}
