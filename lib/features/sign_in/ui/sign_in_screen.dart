import 'package:convo/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../app_widgets/app_button.dart';
import '../../../app_widgets/convo_head_line.dart';
import '../../../core/spaces.dart';
import '../../../core/theming/app_text_styles.dart';
import '../../sign_in_methods/ui/widgets/dont_have_account.dart';
import 'widgets/sign_in_form.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const BackButton(
                    color: AppColors.mainBlue,
                  ),
                  Text(
                    'Back',
                    style: AppTextStyles.font15BlueBold,
                  )
                ],
              ),
              verticalSpace(70.h),

              // Convo head line \\
              ConvoHeadLine(textStyle: AppTextStyles.font40BoldTextColor),
              verticalSpace(30.h),

              // Sign in with google \\
              Center(
                  child: Text('Sign in with Google',
                      style: AppTextStyles.font20BoldTextColor)),
              verticalSpace(30.h),

              // Sign in form \\
              const SignInForm(),
              verticalSpace(20.h),

              // Forgot password? \\
              Padding(
                  padding: EdgeInsets.only(left: 10.0.w),
                  child: Text('Forgot password?',
                      style: AppTextStyles.font13BlackBoldUnderline)),
              verticalSpace(150),

              // Sign in button \\
              AppButton(
                title: 'Sign in',
                onPressed: () {},
              ),
              verticalSpace(50.h),

              // Dont Have account? \\
              const Center(child: DontHaveAccount()),
            ],
          ),
        ),
      ),
    );
  }
}
