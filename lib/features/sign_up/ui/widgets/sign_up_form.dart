import 'package:flutter/material.dart';

import '../../../../app_widgets/app_text_form_field.dart';
import '../../../../core/helpers/spaces.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AppTextFormField(
          title: 'Enter Gmail',
        ),
        verticalSpace(30),
        const AppTextFormField(title: 'Enter Password', suffixIcon: Icons.visibility),
        verticalSpace(30),
        const AppTextFormField(title: 'Confirm Password', suffixIcon: Icons.visibility)
      ],
    );
  }
}
