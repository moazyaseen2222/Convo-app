import '../web/sign_in_web_service.dart';

class SignInRepo {
  final SignInWebService signInWebService;

  SignInRepo(this.signInWebService);

  Future<void> signInWithEmailPassword(String email, String password) async {
    return await signInWebService.signInWithEmailPassword(email, password);
  }
}
