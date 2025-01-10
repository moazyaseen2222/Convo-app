import 'package:convo/features/auth/auth_gate/auth_gate_screen.dart';
import 'package:convo/features/auth/auth_gate/cubit/auth_gate_cubit.dart';
import 'package:convo/features/auth/sign_in/data/repos/sign_in_repo.dart';
import 'package:convo/features/auth/sign_in/data/web/sign_in_web_service.dart';
import 'package:convo/features/auth/sign_in/logic/cubit/sign_in_cubit.dart';
import 'package:convo/features/auth/sign_in/ui/sign_in_screen.dart';
import 'package:convo/features/auth/on_boarding_auth/ui/on_boarding_screen.dart';
import 'package:convo/features/auth/sign_up/data/repo/sign_up_repo.dart';
import 'package:convo/features/auth/sign_up/data/web/sign_up_web_service.dart';
import 'package:convo/features/auth/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:convo/features/auth/sign_up/ui/sign_up_screen.dart';
import 'package:convo/features/set_profile/logic/cubit/set_profile_cubit.dart';
import 'package:convo/features/set_profile/ui/set_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/chat/ui/chat_screen.dart';
import '../../features/home/ui/home_screen.dart';
import 'routers.dart';

class AppRouters {
  // Sign in
  late SignInRepo signInRepo;
  late SignInCubit signInCubit;

  // Sign up
  late SignUpRepo signUpRepo;
  late SignUpCubit signUpCubit;

  AppRouters() {
    // Sign in
    signInRepo = SignInRepo(SignInWebService());
    signInCubit = SignInCubit(signInRepo);

    // Sign up
    signUpRepo = SignUpRepo(SignUpWebService());
    signUpCubit = SignUpCubit(signUpRepo);
  }

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.setProfileScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => SetProfileCubit(),
                  child: const SetProfileScreen(),
                ));

      case Routes.authGate:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => AuthGateCubit(),
                  child: const AuthGateScreen(),
                ));

      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnBoardingAuth());

      case Routes.signInScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => signInCubit,
                  child: const SignInScreen(),
                ));

      case Routes.signupScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => signUpCubit,
            child: const SignUpScreen(),
          ),
        );

      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      case Routes.chatScreen:
        return MaterialPageRoute(
          builder: (_) => const ChatScreen(),
        );

      default:
        return null;
    }
  }
}
