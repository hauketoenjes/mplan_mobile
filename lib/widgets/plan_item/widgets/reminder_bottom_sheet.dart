import 'package:flutter/material.dart';
import 'package:mplan_mobile/l10n/l10n.dart';
import 'package:mplan_mobile/misc/datetime_extensions.dart';
import 'package:mplan_mobile/misc/list_extensions.dart';
import 'package:mplan_mobile/misc/notification_lead_time.dart';
import 'package:mplan_mobile/misc/notification_lead_times_extensions.dart';

class ReminderBottomSheet extends StatelessWidget {
  const ReminderBottomSheet({
    required this.date,
    super.key,
  });

  final DateTime date;

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now().toLocalTz();

    return Padding(
      padding: const EdgeInsets.only(
        top: 16,
        left: 16,
        right: 16,
      ),
      child: SingleChildScrollView(
        child: Column(
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
              for (final leadTime in NotificationLeadTime.values)
                if (date.toLocalTz().subtract(leadTime.duration).isAfter(now))
                  ListTile(
                    title: Text(leadTime.translation(context)),
                    trailing: Text(leadTime.shortRepresentation),
                    onTap: () => Navigator.pop(context, leadTime),
                    tileColor: Theme.of(context).colorScheme.secondaryContainer,
                  ),
            ].genericJoin(const SizedBox(height: 16)),
            const SizedBox(height: 48),
          ],
        ),
      ),
    );
  }
}
