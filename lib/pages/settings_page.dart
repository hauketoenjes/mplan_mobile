import 'package:flutter/material.dart';
import 'package:mplan_mobile/l10n/l10n.dart';

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
              showAboutDialog(
                context: context,
                applicationName: 'Messdienerplan',
                children: [
                  Text(context.l10n.settingsPage_aboutDialog),
                ],
                applicationVersion: '1.0.0',
              );
            },
          ),
        ],
      ),
    );
  }
}
