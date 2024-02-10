import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mplan_mobile/l10n/l10n.dart';
import 'package:mplan_mobile/providers/notification_notifier/notification_notifier.dart';
import 'package:mplan_mobile/widgets/notifications_overview/delete_all_notifications_dialog.dart';
import 'package:mplan_mobile/widgets/notifications_overview/notification_card.dart';
import 'package:mplan_mobile/widgets/utils/empty_list.dart';

class NotificationsOverviewPage extends ConsumerWidget {
  const NotificationsOverviewPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifications = ref.watch(notificationNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.notificationOverviewPage_title),
        actions: [
          IconButton(
            icon: const Icon(Icons.delete_outlined),
            onPressed: () => showDialog<void>(
              context: context,
              builder: (context) => const DeleteAllNotificationsDialog(),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          if (notifications.isEmpty)
            const EmptyList(icon: Icons.notifications_none_outlined),
          const SizedBox(height: 16),
          Expanded(
            child: Scrollbar(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ListView.builder(
                  itemCount: notifications.length,
                  itemBuilder: (context, index) {
                    final item = notifications[index];
                    return NotificationCard(
                      notification: item,
                      onDismissed: () => ref
                          .read(notificationNotifierProvider.notifier)
                          .cancel(item.id),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
