import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/app_widgets/convo_head_line.dart';
import '../../../../core/helpers/spaces.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../on_boarding_auth/ui/widgets/dont_have_account.dart';
import 'widgets/bloc_consumer_with_sign_in_button.dart';
import 'widgets/sign_in_form.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const BackButton(
                  color: AppColors.mainBlue,
                ),
                verticalSpace(70.h),

                // Convo head line
                ConvoHeadLine(textStyle: AppTextStyles.font40BoldTextColor),
                verticalSpace(30.h),

                // Sign in with gmail text \\
                Center(
                    child: Text('Sign in with Gmail',
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

                // Bloc Consumer With  Sign in button \\
                const BlocConsumerWithSignInButton(),
                verticalSpace(50.h),

                // Dont Have account? \\
                const Center(child: DontHaveAccount()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
