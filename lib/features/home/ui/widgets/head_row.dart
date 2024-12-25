import 'package:convo/core/helpers/spaces.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeadRow extends StatelessWidget {
  const HeadRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Image & Status \\
        Stack(children: [
           CircleAvatar(
            radius: 25.r,
            backgroundImage: const AssetImage('images/person.png'),
          ),
          Positioned(
            top: 35.h,
            left: 35.w,
            child: Container(
              height: 15.h,
              width: 15.w,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(30.r)),
            ),
          ),
        ]),
        horiznetlSpace(270.w),

        // Search Icon \\
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search_outlined,
              size: 30,
            ))
      ],
    );
  }
}
