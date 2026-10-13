import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:mplan_mobile/l10n/l10n.dart';
import 'package:mplan_mobile/widgets/migration/migration_dialog.dart';
import 'package:mplan_mobile/widgets/migration/turnus_logo.dart';

class MigrationBanner extends StatelessWidget {
  const MigrationBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Card.filled(
      color: Theme.of(context).colorScheme.primaryContainer,
      child: ListTile(
        leading: const TurnusLogo(size: 32),
        title: Text(context.l10n.migration_banner),
        trailing: const Icon(Icons.chevron_right),
        onTap: () => showMigrationDialog(context),
      ),
    ).paddingOnly(top: 8, left: 16, right: 16);
  }
}
