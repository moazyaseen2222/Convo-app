import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/spaces.dart';
import '../../../../core/theming/app_text_styles.dart';

class SignInMethodsCard extends StatelessWidget {
  const SignInMethodsCard({
    super.key,
    this.methodLogoName,
    required this.methodTitle,
  });

  final String? methodLogoName;
  final String methodTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 15.0.h),
      child: Card(
        child: Padding(
          padding: EdgeInsets.only(top: 15.0.h, bottom: 15.h),
          child: Row(
            children: [
              horiznetlSpace(20.w),
              Image(
                height: 30.h,
                image: AssetImage(methodLogoName!),
              ),
              horiznetlSpace(50.w),
              Text(methodTitle, style: AppTextStyles.font15NormalTextColor),
            ],
          ),
        ),
      ),
    );
  }
}
