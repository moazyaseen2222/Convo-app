import 'package:convo/core/helpers/spaces.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/build_tab_bar.dart';
import 'widgets/head_row.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
            vertical: 20.h,
          ),
          child: Column(
            children: [
              // Head Row \\
              const HeadRow(),
              verticalSpace(20),

              // Tab Bar \\
              const BuildTabBar(),

              // Chats List  \\

              // Floating Button \\
            ],
          ),
        ),
      )),
    );
  }
}
