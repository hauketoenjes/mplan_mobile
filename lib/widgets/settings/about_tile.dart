import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mplan_mobile/l10n/l10n.dart';
import 'package:mplan_mobile/widgets/app_icon.dart';
import 'package:package_info_plus/package_info_plus.dart';

class AboutTile extends StatelessWidget {
  const AboutTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(context.l10n.settingsPage_about),
      subtitle: Text(context.l10n.settingsPage_aboutDescription),
      leading: const Icon(Icons.info_outline),
      onTap: () {
        final packageInfo = GetIt.I<PackageInfo>();

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
