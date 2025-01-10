import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

enum AuthStatus { authenicated, unauthenicated, loading }

class AuthGateCubit extends Cubit<AuthStatus> {
  AuthGateCubit() : super(AuthStatus.loading) {
    _checkAuthStatus();
  }

  Future<void> _checkAuthStatus() async {
    final session = Supabase.instance.client.auth.currentSession;
    if (session != null) {
      emit(AuthStatus.authenicated);
    } else {
      emit(AuthStatus.unauthenicated);
    }
  }
}
