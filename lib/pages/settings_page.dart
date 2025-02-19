import 'package:flutter/material.dart';
import 'package:mplan_mobile/l10n/l10n.dart';
import 'package:mplan_mobile/widgets/layout/layout.dart';
import 'package:mplan_mobile/widgets/settings/about_tile.dart';
import 'package:mplan_mobile/widgets/settings/data_privacy_tile.dart';
import 'package:mplan_mobile/widgets/settings/notifications_tile.dart';
import 'package:mplan_mobile/widgets/settings/plan_tile.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Layout(
      pageTitle: context.l10n.settingsPage_title,
      child: const SingleChildScrollView(
        child: Column(
          spacing: 8,
          children: <Widget>[
            DataPrivacyTile(),
            PlanTile(),
            AboutTile(),
            NotificationsTile(),
          ],
        ),
      ),
    );
  }
}
