import 'package:convo/features/sign_up/ui/sign_up_screen.dart';
import 'package:flutter/material.dart';

import 'features/home/ui/home_screen.dart';
import 'features/set_profile/ui/set_profile_screen.dart';
import 'features/sign_in/ui/sign_in_screen.dart';
import 'features/sign_in_methods/ui/sign_in_methods.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
