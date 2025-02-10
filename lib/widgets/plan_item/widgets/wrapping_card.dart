import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';

class WrappingCard extends StatelessWidget {
  const WrappingCard({
    required this.children,
    required this.spacing,
    super.key,
  });

  final List<Widget> children;
  final double spacing;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusDirectional.circular(8),
        side: BorderSide(
          color: context.dividerColor,
          width: 0.5,
        ),
      ),
      child: Column(
        spacing: spacing,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: children,
      ).paddingAll(16),
    );
  }
}
