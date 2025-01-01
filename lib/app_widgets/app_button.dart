import 'package:convo/core/theming/app_colors.dart';
import 'package:convo/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, required this.title, required this.onPressed});

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
    style: ButtonStyle(
      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0)
        )
      ),
      backgroundColor: const WidgetStatePropertyAll(
         AppColors.mainBlue
      ),
      
      fixedSize: WidgetStateProperty.all(
        const Size(double.maxFinite, 60.0)
      )
    ), onPressed: onPressed,
    child: Text(title,style: AppTextStyles.font20RegularWhite,),
    );
  }
}