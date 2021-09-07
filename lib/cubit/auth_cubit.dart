import 'package:airplane_app/models/models.dart';
import 'package:airplane_app/services/services.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  void signUp({
    required String email,
    required String password,
    required String name,
    String hobby = '',
  }) async {
    try {
      emit(AuthLoading());
      UserModel userModel = await AuthServices().signUp(
        email: email,
        password: password,
        name: name,
        hobby: hobby,
      );
      emit(AuthSuccess(userModel));
    } catch (e) {
      emit(AuthFailed(e.toString()));
    }
  }
}
