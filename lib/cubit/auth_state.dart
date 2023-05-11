// ignore_for_file: camel_case_types

part of 'auth_cubit.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthState {} // saat menginisialisai

class authLoading extends AuthState {} // saat loading

class authSucess extends AuthState {
  //perlu properti pada saat melakukan sucess kita akan mendapatkan data dari user maka memerlukan parameter user
  final UserModel user;
  const authSucess(this.user);

  @override
  List<Object> get props => [user];
} // jika sucess login

class authFailed extends AuthState {
  final String error;

  const authFailed(this.error);

  @override
  List<Object> get props => [error];
} // jika error atau tidak berhasil login
 