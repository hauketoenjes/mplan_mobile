import 'package:flutter/material.dart';
import 'package:mplan_mobile/l10n/l10n.dart';

class EmptyList extends StatelessWidget {
  const EmptyList({required this.icon, super.key});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        children: [
          Icon(
            icon,
            size: 64,
            color: Theme.of(context).colorScheme.secondary,
          ),
          const SizedBox(height: 16),
          Text(
            context.l10n.general_emptyList,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
