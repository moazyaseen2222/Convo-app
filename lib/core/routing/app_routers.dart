import 'package:convo/features/sign_in/ui/sign_in_screen.dart';
import 'package:convo/features/sign_in_methods/ui/sign_in_methods.dart';
import 'package:convo/features/sign_up/ui/sign_up_screen.dart';
import 'package:flutter/material.dart';

import '../../features/chat/ui/chat_screen.dart';
import '../../features/home/ui/home_screen.dart';
import 'routers.dart';

class AppRouters {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const SignInMethods());

      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const SignInScreen());

      case Routes.signupScreen:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());

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
