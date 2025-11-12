import 'package:flutter_bloc/flutter_bloc.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(const LoginState());

  void toggleRememberMe(bool newValue) {
    emit(state.copyWith(isRememberMeChecked: newValue));
  }

  Future<void> login(String email, String password) async {
    emit(state.copyWith(status: LoginStatus.loading));
    try {
      // Simulate a network request
      await Future.delayed(const Duration(seconds: 2));

      if (email == 'test@example.com' && password == 'Password123!') {
        emit(state.copyWith(status: LoginStatus.success));
      } else {
        emit(state.copyWith(status: LoginStatus.error, errorMessage: 'Invalid credentials'));
      }
    } catch (e) {
      emit(state.copyWith(status: LoginStatus.error, errorMessage: e.toString()));
    }
  }
}