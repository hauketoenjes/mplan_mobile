import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mplan_mobile/l10n/l10n.dart';
import 'package:mplan_mobile/providers/notification_notifier/notification_notifier.dart';

class DeleteAllNotificationsDialog extends ConsumerWidget {
  const DeleteAllNotificationsDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AlertDialog(
      title: Text(context.l10n.notificationOverviewPage_deleteAll),
      content: Text(
        context.l10n.notificationOverviewPage_deleteAllDescription,
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(context.l10n.notificationOverviewPage_deleteAllCancel),
        ),
        TextButton(
          onPressed: () async {
            await ref
                .read(notificationNotifierProvider.notifier)
                .cancelAll()
                .then((_) => Navigator.of(context).pop());
          },
          child: Text(context.l10n.notificationOverviewPage_deleteAllConfirm),
        ),
      ],
    );
  }
}
