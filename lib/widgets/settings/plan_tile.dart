import 'package:flutter/material.dart';
import 'package:mplan_mobile/app_configuration.dart';
import 'package:mplan_mobile/l10n/l10n.dart';
import 'package:url_launcher/url_launcher.dart';

class PlanTile extends StatelessWidget {
  const PlanTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(context.l10n.settingsPage_plan),
      subtitle: Text(context.l10n.settingsPage_planDescription),
      leading: const Icon(Icons.calendar_month_outlined),
      trailing: const Icon(Icons.open_in_new),
      onTap: () async {
        if (await canLaunchUrl(planUrl)) {
          await launchUrl(planUrl, mode: LaunchMode.inAppWebView);
        }
      },
    );
  }
}
