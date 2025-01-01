import 'package:convo/core/helpers/extensions.dart';
import 'package:convo/core/routing/app_routers.dart';
import 'package:convo/core/routing/routers.dart';
import 'package:convo/core/spaces.dart';
import 'package:convo/features/sign_in_methods/ui/widgets/dont_have_account.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../app_widgets/convo_head_line.dart';
import '../../../core/theming/app_text_styles.dart';
import 'widgets/phone_number_card.dart';
import 'widgets/or_widget.dart';
import 'widgets/sign_in_methods_card.dart';

class SignInMethods extends StatelessWidget {
  const SignInMethods({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 130.0.h, left: 30.w, right: 30.w),
          child: Column(
            children: [
              // Convo head line \\

              ConvoHeadLine(textStyle: AppTextStyles.font60BoldTextColor),
              verticalSpace(50),

              // Sign in methods \\

              SignInMethodsCard(
                methodLogoName: 'images/google.png',
                methodTitle: 'Sign in with Google',
                onTap: () {
                  context.pushNamed(Routes.loginScreen);
                },
              ),
              SignInMethodsCard(
                methodLogoName: 'images/facebook.png',
                methodTitle: 'Sign in with Facebook',
                onTap: () {},
              ),
              SignInMethodsCard(
                methodLogoName: 'images/apple.png',
                methodTitle: 'Sign in with Apple',
                onTap: () {},
              ),
              verticalSpace(30),

              // Or Line \\
              const OrWidget(),
              verticalSpace(30),

              // Phone Number \\
              const PhonNumberCard(),
              verticalSpace(30),

              // Dont have Account? \\
              const DontHaveAccount(),
            ],
          ),
        ),
      ),
    );
  }
}
