part of 'sign_in_cubit.dart';

abstract class SignInState {}

class SignInInitial extends SignInState {}

class SingInLoading extends SignInState {}

class SignInSuccess extends SignInState {}

final class SignInError extends SignInState {
  final String message;

  SignInError(this.message);
}
