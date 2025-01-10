import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spaces.dart';

class StatusSelectore extends StatefulWidget {
  const StatusSelectore(
      {super.key, required this.status, required this.iconColor});

  final String status;
  final Color iconColor;

  @override
  State<StatusSelectore> createState() => _StatusSelectoreState();
}

class _StatusSelectoreState extends State<StatusSelectore> {

int countryId = 5;

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
            radius: 7.r,
            backgroundColor: widget.iconColor,
          ),
          horiznetlSpace(15.w),
          Text(widget.status),
          horiznetlSpace(10.w),

          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0.h),
            child:DropdownButton<int>(
              isExpanded: true,
              items: const [
                DropdownMenuItem<int>(child: Text('dartyhuta1'),),
                DropdownMenuItem<int>(child: Text('datajyt2'),),
                DropdownMenuItem<int>(child: Text('datawert3'),),
              ],
              onTap: () {
                
              },
              value: countryId,
               onChanged: (int? value){
                setState(() {
                  countryId = value!;
                });
               }
               )
          
            ),
          // IconButton(
          //     onPressed: () {},
          //     icon: const Icon(
          //       Icons.arrow_drop_down_outlined,
          //       size: 30,
          //       color: Colors.black,
          //     ))
        ],
      ),
    );
  }
}
