import 'package:flutter/material.dart';
import 'package:mplan_mobile/app_configuration.dart';
import 'package:mplan_mobile/l10n/l10n.dart';
import 'package:url_launcher/url_launcher.dart';

class DataPrivacyTile extends StatelessWidget {
  const DataPrivacyTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(context.l10n.settingsPage_dataPrivacy),
      subtitle: Text(context.l10n.settingsPage_dataPrivacyDescription),
      leading: const Icon(Icons.shield_outlined),
      trailing: const Icon(Icons.open_in_new),
      onTap: () async {
        if (await canLaunchUrl(dataPrivacyUrl)) {
          await launchUrl(dataPrivacyUrl, mode: LaunchMode.inAppWebView);
        }
      },
    );
  }
}
