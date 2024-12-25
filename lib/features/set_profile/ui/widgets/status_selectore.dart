import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spaces.dart';

class StatusSelectore extends StatelessWidget {
  const StatusSelectore(
      {super.key, required this.status, required this.iconColor});

  final String status;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55.h,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black54),
          borderRadius: BorderRadius.circular(10.r)),
      child: Row(
        children: [
          horiznetlSpace(20.w),
          CircleAvatar(
            radius: 7,
            backgroundColor: iconColor,
          ),
          horiznetlSpace(15.w),
          Text(status),
          horiznetlSpace(200.w),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_drop_down_outlined,
                size: 30,
                color: Colors.black,
              ))
        ],
      ),
    );
  }
}
