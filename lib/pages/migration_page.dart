import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mplan_mobile/l10n/l10n.dart';
import 'package:mplan_mobile/providers/migration_notifier/migration_notifier.dart';
import 'package:mplan_mobile/widgets/migration/install_turnus_button.dart';
import 'package:mplan_mobile/widgets/utils/app_icon.dart';

class MigrationPage extends ConsumerWidget {
  const MigrationPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final message = ref.watch(migrationProvider.select((n) => n.message));

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 480),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const AppIcon(),
                  const SizedBox(height: 24),
                  Text(
                    context.l10n.migration_title,
                    style: context.headlineMedium,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    message ?? context.l10n.migration_hardBody,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 24),
                  const InstallTurnusButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
