import 'package:flutter/material.dart';
import 'package:mplan_mobile/gen/assets.gen.dart';

class TurnusLogo extends StatelessWidget {
  const TurnusLogo({super.key, this.size = 64});

  final double size;

  @override
  Widget build(BuildContext context) {
    final radius = BorderRadius.circular(size * 0.22);

    // The icon's ground is near-black and vanishes on a dark surface.
    return Container(
      foregroundDecoration: BoxDecoration(
        borderRadius: radius,
        border: Border.all(color: Theme.of(context).colorScheme.outlineVariant),
      ),
      child: ClipRRect(
        borderRadius: radius,
        child: Image.asset(
          Assets.images.turnusLogo.path,
          width: size,
          height: size,
        ),
      ),
    );
  }
}
