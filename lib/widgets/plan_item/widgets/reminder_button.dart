import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:mplan_mobile/api/models/plan_item.dart';
import 'package:mplan_mobile/l10n/l10n.dart';
import 'package:mplan_mobile/providers/misc_provider/misc_provider.dart';
import 'package:mplan_mobile/providers/notification_notifier/notification_model.dart';
import 'package:mplan_mobile/providers/notification_notifier/notification_notifier.dart';
import 'package:mplan_mobile/widgets/plan_item/widgets/reminder_bottom_sheet.dart';

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

    return switch (notifications) {
      AsyncData(:final value) =>
        value.any((e) => e.id == stringToNotificationId(widget.item.id))
            ? TextButton.icon(
                icon: const Icon(Icons.notifications_off_outlined),
                label: Text(context.l10n.reminder_remove),
                onPressed: () => ref
                    .read(notificationNotifierProvider.notifier)
                    .cancel(widget.item.id),
              )
            : TextButton.icon(
                icon: const Icon(Icons.notification_add_outlined),
                label: Text(context.l10n.reminder_setReminder),
                onPressed: () async {
                  // Get the context-relevant information
                  final appName = ref.read(packageInfoProvider).appName;
                  final subtitle = context.l10n.reminder_notificationSubtitle;
                  final body = context.l10n.reminder_notificationBody(
                    dateFormat.format(widget.item.date),
                    timeFormat.format(widget.item.date),
                  );

                  // Show the bottom sheet and wait for the result
                  final result = await showModalBottomSheet<Duration>(
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
                          itemId: widget.item.id,
                          date: widget.item.date,
                          notifyBefore: result,
                          notificationSubtitle: subtitle,
                          notificationBody: body,
                          appName: appName,
                        ),
                      );
                },
              ),
      _ => const SizedBox(),
    };
  }
}
