import 'package:bloc/bloc.dart';
import 'package:convo/features/auth/sign_in/data/repos/sign_in_repo.dart';
import 'package:flutter/widgets.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  final SignInRepo signInRepo;

  late TextEditingController emailController;
  late TextEditingController passwordControlle;

  final formKey = GlobalKey<FormState>();

  SignInCubit(this.signInRepo) : super(SignInInitial());

  Future<void> signIn(String email, String password) async {
    emit(SingInLoading());
    try {
      await signInRepo.signInWithEmailPassword(email, password);
      emit(SignInSuccess());
    } catch (e) {
      if (e.toString().contains('Failed host lookup')) {
        emit(SignInError('No Internet!'));
      } else if (e.toString().contains('Invalid login credentials')) {
        emit(SignInError('User not registered!'));
      }
    }
  }
}
