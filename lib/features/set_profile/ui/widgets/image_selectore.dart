import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';

class ImageSelectore extends StatelessWidget {
  const ImageSelectore({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      CircleAvatar(
        radius: 100.r,
        backgroundImage: const AssetImage('images/person.png'),
      ),
      Positioned(
        top: 150.h,
        left: 150.w,
        child: Container(
          decoration: BoxDecoration(
              color: AppColors.mainBlue,
              borderRadius: BorderRadius.circular(30.r)),
          child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.edit,
                color: Colors.white,
              )),
        ),
      ),
    ]);
  }
}
