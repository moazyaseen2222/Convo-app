
import 'package:flutter/material.dart';

import '../../../../core/theming/app_text_styles.dart';

class PhonNumberCard extends StatelessWidget {
  const PhonNumberCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.only(top: 15.0, bottom: 15),
          child: Center(
            child: Text('Continue with phone number',
                style: AppTextStyles.font15NormalTextColor),
          ),
        ),
      ),
    );
  }
}