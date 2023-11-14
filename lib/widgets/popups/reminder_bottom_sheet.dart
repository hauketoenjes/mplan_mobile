import 'package:flutter/material.dart';
import 'package:mplan_mobile/l10n/l10n.dart';
import 'package:mplan_mobile/misc/list_extensions.dart';

class ReminderBottomSheet extends StatelessWidget {
  const ReminderBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16,
        left: 16,
        right: 16,
        bottom: 48,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
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
            ListTile(
              title: Text(context.l10n.reminder_1week),
              trailing: const Text('7d'),
              onTap: () => Navigator.pop(context, const Duration(days: 7)),
              tileColor: Theme.of(context).colorScheme.secondaryContainer,
            ),
            ListTile(
              title: Text(context.l10n.reminder_1day),
              trailing: const Text('24h'),
              onTap: () => Navigator.pop(context, const Duration(days: 1)),
              tileColor: Theme.of(context).colorScheme.secondaryContainer,
            ),
            ListTile(
              title: Text(context.l10n.reminder_12hours),
              trailing: const Text('12h'),
              onTap: () => Navigator.pop(context, const Duration(hours: 12)),
              tileColor: Theme.of(context).colorScheme.secondaryContainer,
            ),
            ListTile(
              title: Text(context.l10n.reminder_1hour),
              trailing: const Text('1h'),
              onTap: () => Navigator.pop(context, const Duration(hours: 1)),
              tileColor: Theme.of(context).colorScheme.secondaryContainer,
            ),
          ].genericJoin(const SizedBox(height: 16)),
        ),
      ),
    );
  }
}
