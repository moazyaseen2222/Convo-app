import 'package:flutter/material.dart';

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
      height: 55,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black54),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          horiznetlSpace(20),
          CircleAvatar(
            radius: 7,
            backgroundColor: iconColor,
          ),
          horiznetlSpace(15),
          Text(status),
          horiznetlSpace(200),
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
