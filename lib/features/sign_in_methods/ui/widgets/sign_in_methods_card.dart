import 'package:flutter/material.dart';

import '../../../../core/spaces.dart';
import '../../../../core/theming/app_text_styles.dart';

class SignInMethodsCard extends StatelessWidget {
  const SignInMethodsCard({
    super.key, this.methodLogoName, required this.methodTitle,
  });


  final String? methodLogoName;
  final String methodTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.only(top: 15.0, bottom: 15),
          child: Row(
            children: [
              horiznetlSpace(20),
               Image(
                height: 30,
                image: AssetImage(methodLogoName!),
              ),
              horiznetlSpace(50),
              Text(methodTitle,
                  style: AppTextStyles.font15NormalTextColor),
            ],
          ),
        ),
      ),
    );
  }
}
