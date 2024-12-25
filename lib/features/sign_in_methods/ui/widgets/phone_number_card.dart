
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_text_styles.dart';

class PhonNumberCard extends StatelessWidget {
  const PhonNumberCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(bottom: 15.0.h),
      child: Card(
        child: Padding(
          padding:  EdgeInsets.only(top: 15.0.h, bottom: 15.h),
          child: Center(
            child: Text('Continue with phone number',
                style: AppTextStyles.font15NormalTextColor),
          ),
        ),
      ),
    );
  }
}