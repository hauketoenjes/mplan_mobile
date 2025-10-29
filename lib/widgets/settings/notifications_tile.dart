import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mplan_mobile/l10n/l10n.dart';
import 'package:mplan_mobile/providers/notification_notifier/notification_notifier.dart';

class NotificationsTile extends ConsumerWidget {
  const NotificationsTile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifications = ref.watch(notificationProvider);

    return ListTile(
      title: Text(context.l10n.settingsPage_cancelAllNotifcations),
      subtitle: switch (notifications) {
        AsyncData(:final value) => Text(
          context.l10n.settingsPage_cancelAllNotifcationsDescription(
            value.length,
          ),
        ),
        _ => null,
      },
      leading: const Icon(Icons.notifications_off_outlined),
      onTap: () async {
        await ref.read(notificationProvider.notifier).cancelAll();
      },
    );
  }
}
