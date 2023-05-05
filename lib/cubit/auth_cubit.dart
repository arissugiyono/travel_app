import 'package:airplane_app/models/user_model.dart';
import 'package:airplane_app/services/auth_service.dart';
import 'package:airplane_app/services/user_service.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  void signUp(
      {required String email,
      required String password,
      required String name,
      String hooby = ''}) async {
    try {
      emit(authLoading());

      UserModel user = await AuthService()
          .signUp(email: email, password: password, name: name, hobby: hooby);

      emit(authSucess(user));
    } catch (e) {
      emit(authFailed(e.toString()));
    }
  }

  void signOut() async {
    try {
      emit(authLoading());
      await AuthService().singOut();
      emit(AuthInitial());
    } catch (e) {
      emit(authFailed(e.toString()));
    }
  }

  void getCurrentUser(String id) async {
    try {
      UserModel user = await userService().getUserById(id);
      emit(authSucess(user));
    } catch (e) {
      emit(authFailed(e.toString()));
    }
  }
}
