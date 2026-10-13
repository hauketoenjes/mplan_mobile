import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mplan_mobile/api/models/migration_notice.dart';
import 'package:mplan_mobile/constants.dart';
import 'package:mplan_mobile/pages/migration_page.dart';
import 'package:mplan_mobile/providers/migration_notifier/migration_notifier.dart';
import 'package:mplan_mobile/providers/misc_provider/misc_provider.dart';
import 'package:mplan_mobile/widgets/migration/migration_dialog.dart';

/// Shows [child] until the migration reaches the hard stage, and the migration
/// dialog every [dialogInterval] while it is soft.
class MigrationGate extends ConsumerStatefulWidget {
  const MigrationGate({required this.child, super.key});

  final Widget child;

  static const dialogInterval = Duration(days: 7);

  @override
  ConsumerState<MigrationGate> createState() => _MigrationGateState();
}

class _MigrationGateState extends ConsumerState<MigrationGate> {
  @override
  void initState() {
    super.initState();
    ref.listenManual(
      migrationProvider.select((n) => n.stage),
      (_, stage) => _onStage(stage),
      fireImmediately: true,
    );
  }

  void _onStage(MigrationStage stage) {
    switch (stage) {
      case MigrationStage.off:
        break;
      case MigrationStage.soft:
        _maybeShowDialog();
      // Reminders for a plan that no longer updates would be wrong.
      case MigrationStage.hard:
        unawaited(ref.read(localNotificationsPluginProvider).cancelAll());
    }
  }

  void _maybeShowDialog() {
    final prefs = ref.read(sharedPreferencesProvider);
    final shownAt = prefs.getInt(migrationDialogShownAtKey);
    final now = DateTime.now();
    if (shownAt != null &&
        now.difference(DateTime.fromMillisecondsSinceEpoch(shownAt)) <
            MigrationGate.dialogInterval) {
      return;
    }
    // Stored when shown, not when closed: resuming the app refetches the
    // notice, and an open dialog must not stack a second one.
    unawaited(
      prefs.setInt(migrationDialogShownAtKey, now.millisecondsSinceEpoch),
    );
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) unawaited(showMigrationDialog(context));
    });
  }

  @override
  Widget build(BuildContext context) {
    final stage = ref.watch(migrationProvider.select((n) => n.stage));
    return stage == MigrationStage.hard ? const MigrationPage() : widget.child;
  }
}
