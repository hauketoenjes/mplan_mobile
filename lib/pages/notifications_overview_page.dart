import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mplan_mobile/l10n/l10n.dart';

class NotificationsOverviewPage extends ConsumerWidget {
  const NotificationsOverviewPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.notificationOverviewPage_title)),
      body: const Center(
        child: Text('TODO'),
      ),
    );
  }
}
