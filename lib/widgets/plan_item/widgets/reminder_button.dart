import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:mplan_mobile/api/models/plan_item.dart';
import 'package:mplan_mobile/l10n/l10n.dart';
import 'package:mplan_mobile/misc/datetime_extensions.dart';
import 'package:mplan_mobile/misc/notification_lead_time.dart';
import 'package:mplan_mobile/providers/misc_provider/misc_provider.dart';
import 'package:mplan_mobile/providers/notification_notifier/notification_model.dart';
import 'package:mplan_mobile/providers/notification_notifier/notification_notifier.dart';
import 'package:mplan_mobile/widgets/plan_item/widgets/reminder_bottom_sheet.dart';
import 'package:uuid/uuid.dart';

class ReminderButton extends ConsumerStatefulWidget {
  const ReminderButton({required this.item, super.key});

  final PlanItem item;

  @override
  ConsumerState<ReminderButton> createState() => _ReminderButtonState();
}

class _ReminderButtonState extends ConsumerState<ReminderButton> {
  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat('dd.MM.yyyy');
    final timeFormat = DateFormat('HH:mm');

    final notifications = ref.watch(notificationNotifierProvider);
    final notification = notifications.firstWhereOrNull(
      (e) => e.planItemId == widget.item.id,
    );

    return notification != null
        ? TextButton.icon(
            icon: const Icon(Icons.notifications_off_outlined),
            label: Text(context.l10n.reminder_remove),
            onPressed: () => ref
                .read(notificationNotifierProvider.notifier)
                .cancel(notification.id),
          )
        : TextButton.icon(
            icon: const Icon(Icons.notification_add_outlined),
            label: Text(context.l10n.reminder_setReminder),
            onPressed: () async {
              // Get the context-relevant information
              final appName = ref.read(packageInfoProvider).appName;
              final subtitle = context.l10n.reminder_notificationSubtitle;
              final body = context.l10n.reminder_notificationBody(
                dateFormat.format(widget.item.date.toLocalTz()),
                timeFormat.format(widget.item.date.toLocalTz()),
              );

              // Show the bottom sheet and wait for the result
              final result = await showModalBottomSheet<NotificationLeadTime>(
                context: context,
                builder: (context) => ReminderBottomSheet(
                  date: widget.item.date,
                ),
              );

              // If the result is null, the user cancelled the bottom sheet
              // Also check if the widget is still mounted, otherwise the
              // user navigated away from the page
              if (!mounted || result == null) return;

              // Schedule the notification
              await ref
                  .read(notificationNotifierProvider.notifier)
                  .scheduleNotification(
                    NotificationModel(
                      id: const Uuid().v4(),
                      planItemId: widget.item.id,
                      planItemDate: widget.item.date,
                      planItemLocation: widget.item.location,
                      planItemExtra: widget.item.extra,
                      notificationLeadTime: result,
                      notificationSubtitle: subtitle,
                      notificationAppName: appName,
                      notificationBody: body,
                    ),
                  );
            },
          );
  }
}
