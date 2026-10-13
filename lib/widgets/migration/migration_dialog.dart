import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mplan_mobile/l10n/l10n.dart';
import 'package:mplan_mobile/providers/migration_notifier/migration_notifier.dart';
import 'package:mplan_mobile/widgets/migration/install_turnus_button.dart';

Future<void> showMigrationDialog(BuildContext context) => showDialog<void>(
  context: context,
  builder: (_) => const MigrationDialog(),
);

class MigrationDialog extends ConsumerWidget {
  const MigrationDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final message = ref.watch(migrationProvider.select((n) => n.message));

    return AlertDialog(
      icon: const Icon(Icons.campaign_outlined),
      title: Text(context.l10n.migration_title),
      content: Text(message ?? context.l10n.migration_softBody),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(context.l10n.migration_later),
        ),
        const InstallTurnusButton(),
      ],
    );
  }
}
