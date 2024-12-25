import 'package:flutter/material.dart';

import '../../../../core/theming/app_colors.dart';

class ImageSelectore extends StatelessWidget {
  const ImageSelectore({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      const CircleAvatar(
        radius: 100,
        backgroundImage: AssetImage('images/person.png'),
      ),
      Positioned(
        top: 150,
        left: 150,
        child: Container(
          decoration: BoxDecoration(
              color: AppColors.mainBlue,
              borderRadius: BorderRadius.circular(30)),
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
