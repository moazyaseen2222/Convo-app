import 'package:convo/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({super.key, this.title, this.suffixIcon, this.iconColor, this.hint});

  final String? title;
  final IconData? suffixIcon;
  final Color? iconColor;
  final String? hint;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: AppTextStyles.font12GrayRegular,
        labelStyle: AppTextStyles.font13GrayRegular,
        label: Text(title ?? ''),
        suffixIcon: Icon(suffixIcon,color: iconColor,),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
