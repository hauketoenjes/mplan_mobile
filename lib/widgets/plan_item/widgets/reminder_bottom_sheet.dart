import 'package:flutter/material.dart';
import 'package:mplan_mobile/l10n/l10n.dart';

class ReminderBottomSheet extends StatelessWidget {
  const ReminderBottomSheet({
    required this.date,
    super.key,
  });

  final DateTime date;

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();

    return Padding(
      padding: const EdgeInsets.only(
        top: 16,
        left: 16,
        right: 16,
      ),
      child: SingleChildScrollView(
        child: Column(
          spacing: 16,
          children: <Widget>[
            ...<Widget>[
              Container(
                height: 4,
                width: 40,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(
                    Radius.circular(4),
                  ),
                ),
              ),
              Text(context.l10n.reminder_description),
              if (date.subtract(const Duration(days: 7)).isAfter(now))
                ListTile(
                  title: Text(context.l10n.reminder_1week),
                  trailing: const Text('7d'),
                  onTap: () => Navigator.pop(context, const Duration(days: 7)),
                  tileColor: Theme.of(context).colorScheme.secondaryContainer,
                ),
              if (date.subtract(const Duration(days: 1)).isAfter(now))
                ListTile(
                  title: Text(context.l10n.reminder_1day),
                  trailing: const Text('24h'),
                  onTap: () => Navigator.pop(context, const Duration(days: 1)),
                  tileColor: Theme.of(context).colorScheme.secondaryContainer,
                ),
              if (date.subtract(const Duration(hours: 12)).isAfter(now))
                ListTile(
                  title: Text(context.l10n.reminder_12hours),
                  trailing: const Text('12h'),
                  onTap: () =>
                      Navigator.pop(context, const Duration(hours: 12)),
                  tileColor: Theme.of(context).colorScheme.secondaryContainer,
                ),
              if (date.subtract(const Duration(hours: 1)).isAfter(now))
                ListTile(
                  title: Text(context.l10n.reminder_1hour),
                  trailing: const Text('1h'),
                  onTap: () => Navigator.pop(context, const Duration(hours: 1)),
                  tileColor: Theme.of(context).colorScheme.secondaryContainer,
                ),
            ],
            const SizedBox(height: 48),
          ],
        ),
      ),
    );
  }
}
