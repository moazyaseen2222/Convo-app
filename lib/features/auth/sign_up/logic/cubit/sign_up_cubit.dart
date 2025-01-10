import 'package:bloc/bloc.dart';
import 'package:convo/features/auth/sign_up/data/repo/sign_up_repo.dart';
import 'package:flutter/material.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SignUpRepo _signUpRepo;

  SignUpCubit(this._signUpRepo) : super(SignUpInitial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  Future<void> signUp(String email, String password) async {
    emit(SignUpLoading());
    try {
      await _signUpRepo.signUp(email, password);
      emit(SignUpSuccess());
    } catch (e) {
      if (e.toString().contains('Failed host lookup')) {
        emit(SignUpError('No Internet!'));
      } else if (e.toString().contains('Invalid login credentials')) {
        //// TODO : email is already used!
        // emit(SignUpError('Email is already used!'));
      }
    }
  }
}
