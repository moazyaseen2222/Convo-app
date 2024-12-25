import 'package:flutter/material.dart';

class OrWidget extends StatelessWidget {
  const OrWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Divider(
            endIndent: 10,
            indent: 10,
          ),
        ),
        Text('or'),
        Expanded(
          child: Divider(
            endIndent: 10,
            indent: 10,
          ),
        ),
      ],
    );
  }
}
