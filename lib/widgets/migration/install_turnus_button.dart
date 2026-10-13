import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mplan_mobile/app_configuration.dart';
import 'package:mplan_mobile/l10n/l10n.dart';
import 'package:url_launcher/url_launcher.dart';

class InstallTurnusButton extends StatelessWidget {
  const InstallTurnusButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FilledButton.icon(
      icon: const Icon(Icons.download_outlined),
      label: Text(context.l10n.migration_install),
      onPressed: () => launchUrl(
        Platform.isIOS ? turnusAppStoreUrl : turnusPlayStoreUrl,
        mode: LaunchMode.externalApplication,
      ),
    );
  }
}
