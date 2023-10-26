import 'package:flutter/material.dart';
import 'package:mplan_mobile/gen/assets.gen.dart';

class AppIcon extends StatelessWidget {
  const AppIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(
          Assets.images.msvvLogo.path,
          width: 64,
          height: 64,
        ),
      ),
    );
  }
}
