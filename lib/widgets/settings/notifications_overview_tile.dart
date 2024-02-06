import 'package:flutter/material.dart';
import 'package:mplan_mobile/l10n/l10n.dart';
import 'package:mplan_mobile/pages/notifications_overview_page.dart';

class NotificationsOverviewTile extends StatelessWidget {
  const NotificationsOverviewTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(context.l10n.settingsPage_notificationsOverview),
      subtitle:
          Text(context.l10n.settingsPage_notificationsOverviewDescription),
      leading: const Icon(Icons.notifications_outlined),
      onTap: () async {
        await Navigator.of(context).push(
          MaterialPageRoute<void>(
            builder: (_) => const NotificationsOverviewPage(),
          ),
        );
      },
    );
  }
}
