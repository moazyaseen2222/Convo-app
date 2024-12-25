import 'package:flutter/material.dart';

import '../../../../core/helpers/spaces.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';

class HeadBarRow extends StatelessWidget {
  const HeadBarRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const BackButton(
          color: AppColors.mainBlue,
        ),
        horiznetlSpace(110),
        Text(
          'Profile',
          style: AppTextStyles.font18BoldTextColor,
        )
      ],
    );
  }
}