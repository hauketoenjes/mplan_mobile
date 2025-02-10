import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:mplan_mobile/l10n/l10n.dart';

class EmptyList extends StatelessWidget {
  const EmptyList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      children: [
        Icon(
          Icons.check_outlined,
          size: 64,
          color: Theme.of(context).colorScheme.secondary,
        ),
        Text(
          context.l10n.general_emptyList,
          style: context.bodyMedium,
          textAlign: TextAlign.center,
        ),
      ],
    ).paddingAll(32);
  }
}
