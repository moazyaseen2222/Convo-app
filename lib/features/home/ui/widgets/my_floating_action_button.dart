import 'package:flutter/material.dart';

import '../../../../core/theming/app_colors.dart';

class MyFloatingActionButton extends StatelessWidget {
  const MyFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        backgroundColor: AppColors.mainBlue,
        child: const Icon(
          Icons.chat_outlined,
          color: Colors.white,
        ),
        onPressed: () {});
  }
}
