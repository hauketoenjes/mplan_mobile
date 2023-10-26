import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mplan_mobile/l10n/l10n.dart';
import 'package:mplan_mobile/providers/misc_provider/misc_provider.dart';
import 'package:mplan_mobile/widgets/utils/app_icon.dart';

class AboutTile extends ConsumerWidget {
  const AboutTile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      title: Text(context.l10n.settingsPage_about),
      subtitle: Text(context.l10n.settingsPage_aboutDescription),
      leading: const Icon(Icons.info_outline),
      onTap: () {
        final packageInfo = ref.read(packageInfoProvider);

        showAboutDialog(
          context: context,
          applicationIcon: const AppIcon(),
          applicationName: packageInfo.appName,
          children: [
            Text(context.l10n.settingsPage_aboutDialog),
          ],
          applicationVersion:
              '${packageInfo.version} (${packageInfo.buildNumber})',
        );
      },
    );
  }
}
