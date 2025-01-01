import 'package:convo/core/routing/app_routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => MyApp(
            appRouters: AppRouters(),
          )));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.appRouters});

  final AppRouters appRouters;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouters.generateRoute,
    );
  }
}
