import 'package:convo/app_widgets/app_button.dart';
import 'package:convo/app_widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';

import '../../../../core/helpers/spaces.dart';
import 'status_selectore.dart';

class InfoForm extends StatelessWidget {
  const InfoForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AppTextFormField(title: 'Name'),
        verticalSpace(25),
        const AppTextFormField(title: 'Bio'),
        verticalSpace(25),

        // Status Selectore \\

        const StatusSelectore(
          status: 'Available',
          iconColor: Colors.green,
        ),
         verticalSpace(100),

         // Complete Button \\

         AppButton(title: 'Complete', onPressed: (){})
      ],
    );
  }
}
