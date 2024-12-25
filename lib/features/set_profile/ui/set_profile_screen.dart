import 'package:convo/core/helpers/spaces.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/head_bar_row.dart';
import 'widgets/image_selectore.dart';
import 'widgets/info_form.dart';

class SetProfileScreen extends StatelessWidget {
  const SetProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
            vertical: 15.h,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Head Bar Row \\
                const HeadBarRow(),
                verticalSpace(50.h),

                // Image Selectore \\
                const ImageSelectore(),
                verticalSpace(50.h),

                // Info Form \\
                const InfoForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
