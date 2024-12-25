import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../core/theming/app_text_styles.dart';

class HaveAccount extends StatelessWidget {
  const HaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
         TextSpan(
           text: 'Already have an account?',
        style: AppTextStyles.font15GrayRegular,
         ),
         TextSpan(
           text: '\n\nSign in',
        style: AppTextStyles.font15BlueSemiBold,
        recognizer: TapGestureRecognizer()
        ..onTap = (){
              // context.pushReplacementNamed(Routes.signupScreen);
        }
      
         )
        ]
      ),
      
      );
  }
}