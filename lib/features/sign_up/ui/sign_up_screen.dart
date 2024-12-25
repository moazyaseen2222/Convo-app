import 'package:flutter/material.dart';

import '../../../app_widgets/app_button.dart';
import '../../../app_widgets/convo_head_line.dart';
import '../../../core/helpers/spaces.dart';
import '../../../core/theming/app_colors.dart';
import '../../../core/theming/app_text_styles.dart';
import '../../sign_in/ui/widgets/have_account.dart';
import 'widgets/sign_up_form.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
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
                verticalSpace(70),

                // Convo head line \\
                ConvoHeadLine(textStyle: AppTextStyles.font40BoldTextColor),
                verticalSpace(30),

                // Create new account \\
                Center(
                    child: Text('Create new account',
                        style: AppTextStyles.font20BoldTextColor)),
                verticalSpace(30),

                // Sign up form \\
                const SignUpForm(),

                verticalSpace(100),

                // Sign up button \\
                AppButton(
                  title: 'Sign up',
                  onPressed: () {},
                ),
                verticalSpace(50),

                // Have account? \\
                const Center(child: HaveAccount()),
              ],
            ),
          ),
        ),
      ),
    );
    ;
  }
}