import 'package:convo/core/helpers/spaces.dart';
import 'package:flutter/material.dart';

class HeadRow extends StatelessWidget {
  const HeadRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Image & Status \\
        Stack(children: [
          const CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage('images/person.png'),
          ),
          Positioned(
            top: 35,
            left: 35,
            child: Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(30)),
            ),
          ),
        ]),
        horiznetlSpace(270),

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
