import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mplan_mobile/gen/assets.gen.dart';
import 'package:mplan_mobile/l10n/l10n.dart';
import 'package:package_info_plus/package_info_plus.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.l10n.settingsPage_title,
            style: Theme.of(context).textTheme.displaySmall,
          ),
          const SizedBox(height: 16),
          ListTile(
            title: Text(context.l10n.settingsPage_about),
            subtitle: Text(context.l10n.settingsPage_aboutDescription),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            leading: const Icon(Icons.info_outline),
            onTap: () {
              final packageInfo = GetIt.I<PackageInfo>();

              showAboutDialog(
                context: context,
                applicationIcon: CircleAvatar(
                  backgroundImage: Assets.images.msvvLogo.provider(),
                  radius: 24,
                ),
                applicationName: packageInfo.appName,
                children: [
                  Text(context.l10n.settingsPage_aboutDialog),
                ],
                applicationVersion: packageInfo.version,
              );
            },
          ),
        ],
      ),
    );
  }
}
